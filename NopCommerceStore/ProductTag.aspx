<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.ProductTagPage" CodeBehind="ProductTag.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ProductsByTag" Src="~/Modules/ProductsByTag.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:ProductsByTag ID="ctrlProductsByTag" runat="server" />
</asp:Content>
