<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.AccountActivationPage" CodeBehind="AccountActivation.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="AccountActivation" Src="~/Modules/CustomerAccountActivation.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:AccountActivation ID="ctrlAccountActivation" runat="server" />
</asp:Content>
