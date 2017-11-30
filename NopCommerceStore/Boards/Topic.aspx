<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Boards.TopicPage" CodeBehind="Topic.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumTopic" Src="~/Modules/ForumTopic.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="topic">
        <nopCommerce:ForumTopic ID="ctrlForumTopic" runat="server" />
    </div>
</asp:Content>
