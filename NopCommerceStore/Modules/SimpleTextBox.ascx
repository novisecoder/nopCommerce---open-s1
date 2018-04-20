<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Modules.SimpleTextBox" Codebehind="SimpleTextBox.ascx.cs" %>
<asp:TextBox ID="txtValue" runat="server" CssClass="form-control" Width="100%" Height="34px" Font-Size="14px" BackColor="White" BorderColor="#CCCCCC"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvValue" ControlToValidate="txtValue" Font-Names="verdana"
    Font-Size="9pt" runat="server" Display="Dynamic">*</asp:RequiredFieldValidator>