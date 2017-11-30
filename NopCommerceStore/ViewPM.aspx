<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.ViewPMPage" CodeBehind="ViewPM.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="PrivateMessagesView" Src="~/Modules/PrivateMessagesView.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:PrivateMessagesView ID="ctrlPrivateMessagesView" runat="server" />
</asp:Content>
