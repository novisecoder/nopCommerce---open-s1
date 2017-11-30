<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Boards.SearchPage" 
    CodeBehind="Search.aspx.cs" %>

<%@ Register TagPrefix="nopCommerce" TagName="ForumSearch" Src="~/Modules/ForumSearch.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="forumsearch">
        <nopCommerce:ForumSearch ID="ctrlForumSearch" runat="server" />
    </div>
</asp:Content>
