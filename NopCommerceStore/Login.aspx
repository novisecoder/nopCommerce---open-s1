<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.LoginPage" Title="Login" Codebehind="Login.aspx.cs"  %>

<%@ Register TagPrefix="nopCommerce" TagName="CustomerLogin" Src="~/Modules/CustomerLogin.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:CustomerLogin ID="ctrlCustomerLogin" runat="server" />
</asp:Content>
