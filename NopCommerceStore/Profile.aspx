<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.ProfilePage" CodeBehind="Profile.aspx.cs"   %>

<%@ Register TagPrefix="nopCommerce" TagName="ProfileInfo" Src="~/Modules/ProfileInfo.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="profile-page">
        <div class="title">
            <asp:Literal runat="server" ID="lTitle" />
        </div>
        <div class="clear">
        </div>
        <div class="body">
            <nopCommerce:ProfileInfo ID="ctrlProfileInfo" runat="server" />
        </div>
    </div>
</asp:Content>
