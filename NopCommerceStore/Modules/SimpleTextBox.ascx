<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Modules.SimpleTextBox" Codebehind="SimpleTextBox.ascx.cs" %>
<asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
<input type="text" name="name" class="form-control" required="required" id="txtValue1">
<asp:RequiredFieldValidator ID="rfvValue" ControlToValidate="txtValue" Font-Names="verdana"
    Font-Size="9pt" runat="server" Display="Dynamic">*</asp:RequiredFieldValidator>

