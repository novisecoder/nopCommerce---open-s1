<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Main.Master"
    CodeBehind="UserAgreement.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.UserAgreementPage"
     %>
<%@ Register TagPrefix="nopCommerce" TagName="UserAgreementControl" Src="~/Modules/UserAgreementControl.ascx" %>

<asp:Content runat="server" ContentPlaceHolderID="body">
    <nopCommerce:UserAgreementControl runat="server" />
</asp:Content>
