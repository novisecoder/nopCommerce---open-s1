<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EShopperHeader.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.EShopperHeader1" %>
<%@ Register TagPrefix="nopCommerce" TagName="SearchBox" Src="~/Modules/SearchBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="Wishlist" Src="~/Modules/Wishlist.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="LanguageSelector" Src="~/Modules/LanguageSelector.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="OrderSummary" Src="~/Modules/OrderSummary.ascx" %>

<div>
    <!-- Page Header -->
    <header id="header">

        <div class="header_top">
            <!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills"></ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="http://facebook.com" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="http://twitter.com" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="http://instagram.com" title="Instagram"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header_top-->

        <div class="header-middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="<%=CommonHelper.GetStoreLocation()%>">
                                    <strong style="color: black; font-size: large; font-family: Matura MT Script Capitals">AVA</strong>
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
                                            <ul role="menu" class="sub-menu">
                                                <li><a href="<%=Page.ResolveUrl("~/logout.aspx")%>" class="ico-logout">
                                                    <%=GetLocaleResourceString("Account.Logout")%></a> </li>
                                            </ul>
                                        </li>

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
                                        <li>
                                            <nopCommerce:OrderSummary ID="OrderSummaryControl" runat="server" IsShoppingCart="true"></nopCommerce:OrderSummary>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="<%= SEOHelper.GetWishlistUrl()%>" class="ico-wishlist">
                                    <%=GetLocaleResourceString("Wishlist.Wishlist")%></a>
                                    <ul role="menu" class="sub-menu">
                                        <li>
                                            <nopCommerce:Wishlist ID="Wishlist1" runat="server" IsEditable="false"></nopCommerce:Wishlist>
                                        </li>
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
        <div class="header-bottom">
            <!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="shop-menu pull-left">
                            <ul class="nav navbar-nav">
                                <li><a href="<%=CommonHelper.GetStoreLocation()%>">
                                    <%=GetLocaleResourceString("Content.HomePage")%></a> </li>
                                <% if (this.ProductService.RecentlyAddedProductsEnabled)
                                    { %>
                                <li><a href="<%=Page.ResolveUrl("~/recentlyaddedproducts.aspx")%>">
                                    <%=GetLocaleResourceString("Products.NewProducts")%></a> </li>
                                <%} %>
                                <% if (this.BlogService.BlogEnabled)
                                    { %>
                                <li><a href="<%= SEOHelper.GetBlogUrl()%>">
                                    <%=GetLocaleResourceString("Blog.Blog")%></a> </li>
                                <%} %>
                                <% if (this.ForumService.ForumsEnabled)
                                    { %>
                                <li><a href="<%= SEOHelper.GetForumMainUrl()%>">
                                    <%=GetLocaleResourceString("Forum.Forums")%></a></li>
                                <%} %>
                                <li><a href="<%= Page.ResolveUrl("~/news.aspx")%>">News</a></li>
                                <li><a href="<%=Page.ResolveUrl("~/contactus.aspx")%>">
                                    <%=GetLocaleResourceString("ContactUs.ContactUs")%></a> </li>
                            </ul>
                        </div>
                        <div class="shop-menu pull-right">
                            <nopCommerce:LanguageSelector runat="server" ID="lngSelect" />
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="search_box pull-right">
                            <ul>
                                <li>
                                    <asp:TextBox ID="txtSearchTerms" runat="server" SkinID="SearchBoxText" Text="<% $NopResources:Search.SearchStoreTooltip %>" />
                                </li>
                                <li>
                                    <asp:Button runat="server" OnClick="btnSearch_Click" ID="search" Text="<% $NopResources:Search.SearchButton %>"
                                        CssClass="searchboxbutton" CausesValidation="false"></asp:Button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
<!--/header-bottom-->
