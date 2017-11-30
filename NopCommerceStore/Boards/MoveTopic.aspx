<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Title="Edit Post" Inherits="NopSolutions.NopCommerce.Web.Boards.MoveTopicPage"
    CodeBehind="MoveTopic.aspx.cs"  %>

<%@ Register TagPrefix="nopCommerce" TagName="MoveForumTopic" Src="~/Modules/MoveForumTopic.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:MoveForumTopic ID="ctrlMoveForumTopic" runat="server" EditPost="true" />
</asp:Content>
