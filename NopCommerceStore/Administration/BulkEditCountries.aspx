<%@ Page Language="C#" MasterPageFile="~/Administration/main.master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Administration.Administration_BulkEditCountries"
    CodeBehind="BulkEditCountries.aspx.cs" %>
    <%@ Register TagPrefix="nopCommerce" TagName="BulkEditCountries" Src="Modules/BulkEditCountries.ascx" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="cph1" runat="server">
        <nopCommerce:BulkEditCountries runat="server" ID="ctrlBulkEditCountries" />
    </asp:Content>