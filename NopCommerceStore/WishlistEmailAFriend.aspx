<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.WishlistEmailAFriendPage" CodeBehind="WishlistEmailAFriend.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="WishlistEmailAFriend" Src="~/Modules/WishlistEmailAFriend.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:WishlistEmailAFriend ID="ctrlWishlistEmailAFriend" runat="server" />
</asp:Content>
