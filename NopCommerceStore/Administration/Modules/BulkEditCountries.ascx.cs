//------------------------------------------------------------------------------
// The contents of this file are subject to the nopCommerce Public License Version 1.0 ("License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at  http://www.nopCommerce.com/License.aspx. 
// 
// Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 
// See the License for the specific language governing rights and limitations under the License.
// 
// The Original Code is nopCommerce.
// The Initial Developer of the Original Code is NopSolutions.
// All Rights Reserved.
// 
// Contributor(s): _______. 
//------------------------------------------------------------------------------


using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.ExportImport;
using NopSolutions.NopCommerce.BusinessLogic.Localization;
using NopSolutions.NopCommerce.BusinessLogic.Manufacturers;
using NopSolutions.NopCommerce.BusinessLogic.Media;
using NopSolutions.NopCommerce.BusinessLogic.Directory;
using NopSolutions.NopCommerce.BusinessLogic.Utils;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;


namespace NopSolutions.NopCommerce.Web.Administration.Modules
{
    public partial class BulkEditCountries : BaseNopAdministrationUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvCountryVariants_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.gvCountryVariants.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected override void OnPreRender(EventArgs e)
        {
            BindJQuery();

            base.OnPreRender(e);
        }

        protected List<CountryVariant> GetCountryVariants()
        {
            string countryName = txtCountryName.Text;

            int countryId = ParentCategory.SelectedCategoryId;
            int totalRecords = 0;
            var countryVariants = CountryService.GetAllCountryVariants(countryId, countryName, int.MaxValue, 0, out totalRecords);
            return countryVariants;
        }

        protected void BindGrid()
        {
            var countryVariants = GetCountryVariants();
            if (countryVariants.Count > 0)
            {
                this.gvCountryVariants.Visible = true;
                this.lblNoCountriesFound.Visible = false;
                this.gvCountryVariants.DataSource = countryVariants;
                this.gvCountryVariants.DataBind();
            }
            else
            {
                this.gvCountryVariants.Visible = false;
                this.lblNoCountriesFound.Visible = true;
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                BindGrid();
            }
            catch (Exception exc)
            {
                ProcessException(exc);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (GridViewRow row in gvCountryVariants.Rows)
                {
                    var cbCountryVariant = row.FindControl("cbCountryVariant") as CheckBox;
                    var hfCountryVariantId = row.FindControl("hfCountryVariantId") as HiddenField;

                    var txtPrice = row.FindControl("txtPrice") as DecimalTextBox;
                    var txtOldPrice = row.FindControl("txtOldPrice") as DecimalTextBox;
                    var cbPublished = row.FindControl("cbPublished") as CheckBox;

                    bool isChecked = cbCountryVariant.Checked;
                    int CountryVariantId = int.Parse(hfCountryVariantId.Value);
                    if (isChecked)
                    {
                        int pvId = int.Parse(hfCountryVariantId.Value);
                        decimal price = txtPrice.Value;
                        decimal oldPrice = txtOldPrice.Value;
                        bool published = cbPublished.Checked;
                        var CountryVariant = this.CountryService.GetCountryById(pvId);
                        if (CountryVariant != null)
                        {
                            CountryVariant.Published = published;
                            this.CountryService.UpdateCountry(CountryVariant);
                        }
                    }
                }

                //BindGrid();
                ShowMessage(GetLocaleResourceString("Admin.BulkEditCountries.SuccessfullyUpdated"));
            }
            catch (Exception ex)
            {
                ProcessException(ex);
            }
        }
    }
}