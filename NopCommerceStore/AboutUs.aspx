<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.AboutUsPage" CodeBehind="AboutUs.aspx.cs"
     %>

<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:Topic ID="topicAboutUs" runat="server" TopicName="AboutUs">
    </nopCommerce:Topic>
</asp:Content>