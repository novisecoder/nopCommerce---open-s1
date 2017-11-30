<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Title="Topic Edit" Inherits="NopSolutions.NopCommerce.Web.Boards.TopicEditPage"
    CodeBehind="TopicEdit.aspx.cs"  %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumPostEdit" Src="~/Modules/ForumPostEdit.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="topicedit">
        <nopCommerce:ForumPostEdit ID="ctrlForumPostEdit" runat="server" EditTopic="true" />
    </div>
</asp:Content>
