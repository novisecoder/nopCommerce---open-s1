<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.ProductEmailAFriendPage" CodeBehind="ProductEmailAFriend.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ProductEmailAFriend" Src="~/Modules/ProductEmailAFriend.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:ProductEmailAFriend ID="ctrlProductEmailAFriend" runat="server" />
</asp:Content>
