<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.RegisterPage" CodeBehind="Register.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="CustomerRegister" Src="~/Modules/CustomerRegister.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:CustomerRegister ID="ctrlCustomerRegister" runat="server" />
</asp:Content>
