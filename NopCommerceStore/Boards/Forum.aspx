<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Boards.ForumPage" CodeBehind="Forum.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="Forum" Src="~/Modules/Forum.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="forum">
        <nopCommerce:Forum ID="ctrlForum" runat="server" />
    </div>
</asp:Content>
