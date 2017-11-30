using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.Common.Utils;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class EShopperHeader1 : BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lFinishImpersonate_Click(object sender, EventArgs e)
        {
            if (NopContext.Current.IsCurrentCustomerImpersonated &&
                NopContext.Current.OriginalUser != null)
            {
                NopContext.Current.OriginalUser.ImpersonatedCustomerGuid = Guid.Empty;
                string returnUrl = CommonHelper.GetStoreAdminLocation();
                if (NopContext.Current.User != null)
                {
                    returnUrl = string.Format("{0}CustomerDetails.aspx?CustomerID={1}&TabID={2}", returnUrl, NopContext.Current.User.CustomerId, "pnlCustomerPlaceOrder");
                }
                Response.Redirect(returnUrl);
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            this.txtSearchTerms.Attributes.Add("onfocus", string.Format("if(this.value=='{0}')this.value=''", GetLocaleResourceString("Search.SearchStoreTooltip")));
            txtSearchTerms.Attributes.Add("onblur", string.Format("if(this.value=='{0}')this.value='Search Store'", GetLocaleResourceString("Search.SearchStoreTooltip")));
            txtSearchTerms.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById('" + search.ClientID + "').click();return false;}} else {return true}; ");
            base.OnPreRender(e);

            Literal lUnreadPrivateMessages = topLoginView.FindControl("lUnreadPrivateMessages") as Literal;
            if (lUnreadPrivateMessages != null)
            {
                lUnreadPrivateMessages.Text = GetUnreadPrivateMessages();
            }

            base.OnPreRender(e);
        }

        protected string GetUnreadPrivateMessages()
        {
            string result = string.Empty;
            if (this.ForumService.AllowPrivateMessages &&
                NopContext.Current.User != null && !NopContext.Current.User.IsGuest)
            {
                var privateMessages = this.ForumService.GetAllPrivateMessages(0,
                    NopContext.Current.User.CustomerId, false, null, false, string.Empty, 0, 1);

                if (privateMessages.TotalCount > 0)
                {
                    result = string.Format(GetLocaleResourceString("PrivateMessages.TotalUnread"), privateMessages.TotalCount);

                    //notifications here
                    if (this.SettingManager.GetSettingValueBoolean("Common.ShowAlertForPM") &&
                        !NopContext.Current.User.NotifiedAboutNewPrivateMessages)
                    {
                        this.DisplayAlertMessage(string.Format(GetLocaleResourceString("PrivateMessages.YouHaveUnreadPM", privateMessages.TotalCount)));
                        NopContext.Current.User.NotifiedAboutNewPrivateMessages = true;
                    }
                }
            }
            return result;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSearchTerms.Text))
            {
                Response.Redirect(string.Format("~/search.aspx?searchterms={0}", HttpUtility.UrlEncode(txtSearchTerms.Text)));
            }
        }

    }
}