<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.HeaderMenuControl"
    CodeBehind="HeaderMenu.ascx.cs" %>

<%@ Register TagPrefix="nopCommerce" TagName="SearchBox" Src="~/Modules/SearchBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="LanguageSelector" Src="~/Modules/LanguageSelector.ascx" %>

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
                        <div class="pull-right">
                            <nopCommerce:LanguageSelector runat="server" ID="lngSelect" />
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <nopCommerce:SearchBox runat="server" ID="SearchBox1"></nopCommerce:SearchBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
