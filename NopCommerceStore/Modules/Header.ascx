<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.Header" CodeBehind="Header.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="CurrencySelector" Src="~/Modules/CurrencySelector.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="LanguageSelector" Src="~/Modules/LanguageSelector.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="TaxDisplayTypeSelector" Src="~/Modules/TaxDisplayTypeSelector.ascx" %>

<div>
    <!-- Page Header -->
    <header id="header">
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="http://facebook.com" title="Facebook"><i class="fa fa-facebook"><img src="../images/SocialMedia/Facebook.png" style="padding-top:inherit; " /></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->

        <div class="header-middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="Default.aspx"><strong style="color: black; font-size: large; font-family: Matura MT Script Capitals; text-decoration:none;">AVA </strong>
                                <strong style="font-size: medium; color: black">Productions<br />
                                </strong>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <asp:LoginView ID="topLoginView" runat="server">
                                    <AnonymousTemplate>
                                        <li><a href="<%=Page.ResolveUrl("~/login.aspx")%>" class="ico-login">
                                            <%=GetLocaleResourceString("Account.Login")%></a></li>
                                    </AnonymousTemplate>
                                    <LoggedInTemplate>
                                        <li>
                                            <a href="<%= SEOHelper.GetMyAccountUrl()%>" class="account">My Account</a>
                                            <% if (NopContext.Current.IsCurrentCustomerImpersonated)
                                                {
                                            %>
                                            <span class="impersonate">(<%=string.Format(GetLocaleResourceString("Account.ImpersonatedAs"), this.CustomerService.UsernamesEnabled ? Server.HtmlEncode(NopContext.Current.User.Username) : Server.HtmlEncode(NopContext.Current.User.Email))%>
                                                <asp:LinkButton runat="server" ID="lFinishImpersonate" Text="<% $NopResources:Account.ImpersonatedAs.Finish %>"
                                                    ToolTip="<% $NopResources:Account.ImpersonatedAs.Finish.Tooltip %>" OnClick="lFinishImpersonate_Click"
                                                    CssClass="finish-impersonation">
                                                </asp:LinkButton>
                                            </span>
                                            <%} %>
                                        </li>
                                        <li><a href="<%=Page.ResolveUrl("~/logout.aspx")%>" class="ico-logout">
                                            <%=GetLocaleResourceString("Account.Logout")%></a> </li>
                                        <% if (this.ForumService.AllowPrivateMessages)
                                            { %>
                                        <li><a href="<%=Page.ResolveUrl("~/privatemessages.aspx")%>" class="ico-inbox">
                                            <%=GetLocaleResourceString("PrivateMessages.Inbox")%></a>
                                            <asp:Literal runat="server" ID="lUnreadPrivateMessages" />
                                        </li>
                                        <%} %>
                                    </LoggedInTemplate>
                                </asp:LoginView>
                                <li class="dropdown"><a href="<%= SEOHelper.GetShoppingCartUrl()%>" class="ico-cart">
                                    <%=GetLocaleResourceString("Account.ShoppingCart")%>
                                </a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="<%= SEOHelper.GetShoppingCartUrl()%>">(<%=this.ShoppingCartService.GetCurrentShoppingCart(ShoppingCartTypeEnum.ShoppingCart).TotalProducts%>)</a></li>
                                    </ul>
                                </li>
                                <% if (this.SettingManager.GetSettingValueBoolean("Common.EnableWishlist"))
                                    { %>
                                <li class="dropdown"><a href="<%= SEOHelper.GetWishlistUrl()%>" class="ico-wishlist">
                                    <%=GetLocaleResourceString("Wishlist.Wishlist")%></a>
                                    <ul role="menu" class="sub-menu">
                                        <li>
                                            <a href="<%= SEOHelper.GetWishlistUrl()%>">(<%=this.ShoppingCartService.GetCurrentShoppingCart(ShoppingCartTypeEnum.Wishlist).TotalProducts%>)</a></li>
                                        <%} %>
                                    </ul>
                                </li>
                                <% if (NopContext.Current.User != null && NopContext.Current.User.IsAdmin)
                                    { %>
                                <li><a href="<%=Page.ResolveUrl("~/administration/")%>" class="ico-admin">
                                    <%=GetLocaleResourceString("Account.Administration")%></a> </li>
                                <%} %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-middle-->
    </header>
</div>