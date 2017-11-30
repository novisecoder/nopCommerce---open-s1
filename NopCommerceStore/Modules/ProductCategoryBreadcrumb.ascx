<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ProductCategoryBreadcrumb"
    CodeBehind="ProductCategoryBreadcrumb.ascx.cs" %>
<div class="breadcrumb">
    <asp:Repeater ID="rptrCategoryBreadcrumb" runat="server">
        <ItemTemplate>
            <a href='<%#SEOHelper.GetCategoryUrl(Convert.ToInt32(Eval("CategoryId"))) %>'>
                <%#Server.HtmlEncode(Eval("LocalizedName").ToString())%></a>
        </ItemTemplate>
        <SeparatorTemplate>
            /
        </SeparatorTemplate>
        <FooterTemplate>
            /
        </FooterTemplate>
    </asp:Repeater>
    <asp:HyperLink runat="server" ID="hlProduct"></asp:HyperLink>
    <br />
</div>
