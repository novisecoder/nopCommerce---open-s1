<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Main.Master"
    CodeBehind="NewsLetterSubscriptionActivation.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.NewsLetterSubscriptionActivationPage"
     %>
<%@ Register TagPrefix="nopCommerce" TagName="NewsLetterSubscriptionActivationControl" Src="~/Modules/NewsLetterSubscriptionActivationControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:NewsLetterSubscriptionActivationControl runat="server" />
</asp:Content>