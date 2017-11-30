<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.ContactUsPage" CodeBehind="ContactUs.aspx.cs" %>

<%@ Register TagPrefix="nopCommerce" TagName="ContactUs" Src="~/Modules/ContactUs.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:ContactUs ID="ctrlContactUs" runat="server" />
</asp:Content>
