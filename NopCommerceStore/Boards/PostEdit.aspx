<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Title="Edit Post" Inherits="NopSolutions.NopCommerce.Web.Boards.PostEditPage" CodeBehind="PostEdit.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumPostEdit" Src="~/Modules/ForumPostEdit.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="postedit">
        <nopCommerce:ForumPostEdit ID="ctrlForumPostEdit" runat="server" EditPost="true" />
    </div>
</asp:Content>
