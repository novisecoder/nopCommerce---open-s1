<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Administration.Payment.PayPalDirect.ConfigurePaymentMethod"
    CodeBehind="ConfigurePaymentMethod.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="DecimalTextBox" Src="../../Modules/DecimalTextBox.ascx" %>
<table class="adminContent">
    <tr>
        <td colspan="2">
            <b>If you select Paypal Direct, do not select Paypal Standard</b>
            <br />
            <b>If you select Paypal Direct, you should enable Paypal Express too</b>
            <br />
            <b>If you're using this gateway ensure that your primary store currency is supported
                by Paypal.</b>
            <br />
            <br />
            1. Log into your PayPal account.
            <br />
            2. Click on Profile from the Home Menu.
            <br />
            3. Under Account Information >> Choose API Access.
            <br />
            4. Click on Request API Credentials.
            <br />
            5. Choose API Signature as the credential type.
            <br />
            6. Enable the checkbox and agree to the license Terms-I agree to the API Certificate
            Terms of Use and terms incorporated therein and press the Submit button
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            Transaction mode:
        </td>
        <td class="adminData">
            <asp:RadioButton runat="server" ID="rbAuthorize" Text="Authorize" GroupName="Mode">
            </asp:RadioButton><br />
            <asp:RadioButton runat="server" ID="rbAuthorizeAndCapture" Text="Authorize and Capture"
                GroupName="Mode"></asp:RadioButton>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            Use Sandbox:
        </td>
        <td class="adminData">
            <asp:CheckBox ID="cbUseSandbox" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            API Account Name:
        </td>
        <td class="adminData">
            <asp:TextBox runat="server" ID="txtAPIAccountName" CssClass="adminInput"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            API Account Password:
        </td>
        <td class="adminData">
            <asp:TextBox ID="txtAPIAccountPassword" runat="server" CssClass="adminInput"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            Signature:
        </td>
        <td class="adminData">
            <asp:TextBox ID="txtSignature" runat="server" CssClass="adminInput"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            Additional fee [<%=this.CurrencyService.PrimaryStoreCurrency.CurrencyCode%>]:
        </td>
        <td class="adminData">
            <nopCommerce:DecimalTextBox runat="server" ID="txtAdditionalFee" Value="0" RequiredErrorMessage="Additional fee is required"
                MinimumValue="0" MaximumValue="100000000" RangeErrorMessage="The value must be from 0 to 100,000,000"
                CssClass="adminInput"></nopCommerce:DecimalTextBox>
        </td>
    </tr>
</table>
