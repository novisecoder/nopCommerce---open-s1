<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Title="New Topic" Inherits="NopSolutions.NopCommerce.Web.Boards.TopicNewPage"
    CodeBehind="TopicNew.aspx.cs"  %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumPostEdit" Src="~/Modules/ForumPostEdit.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="topicedit">
        <nopCommerce:ForumPostEdit ID="ctrlForumPostEdit" runat="server" AddTopic="true"  />
    </div>
</asp:Content>
