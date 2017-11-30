<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Boards.ActiveDiscussionsPage" CodeBehind="ActiveDiscussions.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumActiveDiscussions" Src="~/Modules/ForumActiveDiscussions.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="activediscussionspage">
        <nopCommerce:ForumActiveDiscussions runat="server" ID="ctrlForumActiveDiscussions"
            ForumID="0" TopicCount="50" HideViewAllLink="true" />
    </div>
</asp:Content>
