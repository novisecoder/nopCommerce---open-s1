<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.CheckoutOnepagePage" CodeBehind="CheckoutOnepage.aspx.cs"
    EnableEventValidation="false"  %>

<%@ Register TagPrefix="nopCommerce" TagName="CheckoutOnePage" Src="~/Modules/CheckoutOnePage.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:CheckoutOnePage ID="ctrlCheckoutOnePage" runat="server" />
</asp:Content>
