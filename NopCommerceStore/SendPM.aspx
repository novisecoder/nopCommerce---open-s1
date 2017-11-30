<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.Master" 
    AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.SendPMPage" CodeBehind="SendPM.aspx.cs" %>

<%@ Register TagPrefix="nopCommerce" TagName="PrivateMessagesSend" Src="~/Modules/PrivateMessagesSend.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <nopCommerce:PrivateMessagesSend ID="ctrlPrivateMessagesSend" runat="server" />
</asp:Content>
