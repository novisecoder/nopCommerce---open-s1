<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Title="New Post" Inherits="NopSolutions.NopCommerce.Web.Boards.PostNewPage" CodeBehind="PostNew.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumPostEdit" Src="~/Modules/ForumPostEdit.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:ForumPostEdit ID="ctrlForumPostEdit" runat="server" AddPost="true" />
</asp:Content>
