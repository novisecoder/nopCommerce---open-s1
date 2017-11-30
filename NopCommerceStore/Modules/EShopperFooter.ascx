<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EShopperFooter.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.EShopperFooter" %>
<%@ Register TagPrefix="nopCommerce" TagName="StoreThemeSelector" Src="~/Modules/StoreThemeSelector.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="NewsLetterSubscriptionBoxControl" Src="~/Modules/NewsLetterSubscriptionBoxControl.ascx" %>

	<footer id="footer"><!--Footer-->
        <div class="footer-widget">
            <div class="center">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2 col-sm-offset-3">
                            <div class="single-widget">
                                <h2>Service</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#">Track your order</a></li>
                                    <li><a href="../ReturnPolicy.aspx">Return Policy</a></li>
                                    <li><a href="../ContactUs.aspx">Contact Us</a></li>
                                    <li><a href="../AboutUs.aspx">About Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <h2>About Shopper</h2>
                                <p>
                                    Get the most recent updates from
                                <br />
                                    our site and be updated your self...
                                </p>
                                <nopCommerce:NewsLetterSubscriptionBoxControl ID="ctrlNewsLetterSubscriptionBoxControl"
                                    runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="footer-poweredby">
                        Powered by <a href="http://www.nopcommerce.com/">nopCommerce</a>
                        <%--Would you like to remove the "Powered by nopCommerce" link in the bottom of the footer? 
                        Find more info here http://www.nopcommerce.com/copyrightremoval.aspx--%>
                    </div>
                    <div class="footer-disclaimer">
                        <%=String.Format(GetLocaleResourceString("Content.CopyrightNotice"), 
                                    DateTime.Now.Year.ToString(), 
                                    this.SettingManager.StoreName)%>
                    </div>
                </div>
            </div>
        </div>
	</footer><!--/Footer-->
