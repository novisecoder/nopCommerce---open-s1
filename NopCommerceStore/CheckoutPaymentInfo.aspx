<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.CheckoutPaymentInfoPage" CodeBehind="CheckoutPaymentInfo.aspx.cs"
     %>

<%@ Register Src="~/Modules/OrderProgress.ascx" TagName="OrderProgress" TagPrefix="nopCommerce" %>
<%@ Register TagPrefix="nopCommerce" TagName="CheckoutPaymentInfo" Src="~/Modules/CheckoutPaymentInfo.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="OrderSummary" Src="~/Modules/OrderSummary.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="checkout-page">
        <nopCommerce:OrderProgress ID="OrderProgressControl" runat="server" OrderProgressStep="Payment" />
        <div class="clear">
        </div>
        <div class="page-title">
            <h1><%=GetLocaleResourceString("Checkout.PaymentInfo")%></h1>
        </div>
        <div class="clear">
        </div>
        <nopCommerce:CheckoutPaymentInfo ID="ctrlCheckoutPaymentInfo" runat="server" />
        <div class="clear">
        </div>
        <div class="order-summary-title">
            <%=GetLocaleResourceString("Checkout.OrderSummary")%>
        </div>
        <div class="clear">
        </div>
        <div class="order-summary-body">
            <nopCommerce:OrderSummary ID="OrderSummaryControl" runat="server" IsShoppingCart="false">
            </nopCommerce:OrderSummary>
        </div>
    </div>
</asp:Content>
