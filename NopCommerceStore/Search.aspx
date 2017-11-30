<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.SearchPage" CodeBehind="Search.aspx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="Search" Src="~/Modules/Search.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:Search ID="ctrlSearch" runat="server" />
</asp:Content>
