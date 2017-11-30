<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.PasswordRecoveryPage" CodeBehind="PasswordRecovery.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="PasswordRecovery" Src="~/Modules/CustomerPasswordRecovery.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:PasswordRecovery ID="ctrlPasswordRecovery" runat="server" />
</asp:Content>
