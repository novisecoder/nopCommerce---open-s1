<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.ShoppingCartPage" CodeBehind="ShoppingCart.aspx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="OrderSummary" Src="~/Modules/OrderSummary.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="OrderProgress" Src="~/Modules/OrderProgress.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:OrderProgress ID="OrderProgressControl" runat="server" OrderProgressStep="Cart" />
    <div class="shoppingcart-page">
        <div class="page-title">
            <h1><%=GetLocaleResourceString("Account.ShoppingCart")%></h1>
        </div>
        <div class="clear">
        </div>
        <div class="body">
            <nopCommerce:OrderSummary ID="OrderSummaryControl" runat="server" IsShoppingCart="true">
            </nopCommerce:OrderSummary>
        </div>
    </div>
</asp:Content>
