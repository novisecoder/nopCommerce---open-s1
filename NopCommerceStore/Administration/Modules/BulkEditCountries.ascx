<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BulkEditCountries.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Administration.Modules.BulkEditCountries" %>
<%@ Register TagPrefix="nopCommerce" TagName="ToolTipLabel" Src="ToolTipLabelControl.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="SelectCategoryControl" Src="SelectCategoryControl.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ConfirmationBox" Src="ConfirmationBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="DecimalTextBox" Src="DecimalTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="NumericTextBox" Src="NumericTextBox.ascx" %>
<div class="section-header">
    <div class="title">
        <img src="Common/ico-configuration.png" alt="<%=GetLocaleResourceString("Admin.BulkEditCountries.Title")%>" />
        <%=GetLocaleResourceString("Admin.BulkEditCountries.Title")%>
    </div>
    <div class="options">
        <asp:Button ID="SearchButton" runat="server" Text="<% $NopResources:Admin.BulkEditCountries.SearchButton.Text %>"
            CssClass="adminButtonBlue" OnClick="SearchButton_Click" ToolTip="<% $NopResources:Admin.BulkEditCountries.SearchButton.Tooltip %>"
            CausesValidation="false" />
        <asp:Button runat="server" Text="<% $NopResources:Admin.Countries.UpdateButton.Text %>"
            CssClass="adminButtonBlue" ID="btnUpdate" OnClick="btnUpdate_Click" />
    </div>
</div>
<table width="100%">
    <tr>
        <td class="adminTitle">
            <nopCommerce:ToolTipLabel runat="server" ID="lblCountryName" Text="<% $NopResources:Admin.BulkEditCountries.CountryName %>"
                ToolTip="<% $NopResources:Admin.BulkEditCountries.CountryName.Tooltip %>" ToolTipImage="~/Administration/Common/ico-help.gif" />
        </td>
        <td class="adminData">
            <asp:TextBox ID="txtCountryName" CssClass="adminInput" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="adminTitle">
            <nopCommerce:ToolTipLabel runat="server" ID="lblCategory" Text="<% $NopResources:Admin.BulkEditCountries.Category %>"
                ToolTip="<% $NopResources:Admin.BulkEditCountries.Category.Tooltip %>" ToolTipImage="~/Administration/Common/ico-help.gif" />
        </td>
        <td class="adminData">
            <nopCommerce:SelectCategoryControl ID="ParentCategory" CssClass="adminInput" runat="server"></nopCommerce:SelectCategoryControl>
        </td>
    </tr>
</table>
<p>
<%=GetLocaleResourceString("Admin.BulkEditCountries.Description")%>
</p>

<script type="text/javascript">

    $(window).bind('load', function() {
        var cbHeader = $(".cbHeader input");
        var cbRowItem = $(".cbRowItem input");
        cbHeader.bind("click", function() {
            cbRowItem.each(function() { this.checked = cbHeader[0].checked; })
        });
        cbRowItem.bind("click", function() { if ($(this).checked == false) cbHeader[0].checked = false; });
    });
    
</script>

<asp:GridView ID="gvCountryVariants" runat="server" AutoGenerateColumns="False" Width="100%"
    OnPageIndexChanging="gvCountryVariants_PageIndexChanging" AllowPaging="true"
    PageSize="15">
    <Columns>
        <asp:TemplateField ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
            <HeaderTemplate>
                <asp:CheckBox ID="cbSelectAll" runat="server" CssClass="cbHeader" />
            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="cbCountryVariant" runat="server" CssClass="cbRowItem" />
                <asp:HiddenField ID="hfCountryVariantId" runat="server" Value='<%# Eval("CountryVariantId") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="<% $NopResources:Admin.BulkEditCountries.NameColumn %>"
            ItemStyle-Width="50%">
            <ItemTemplate>
                <a href='CountryVariantDetails.aspx?CountryVariantID=<%#Eval("CountryVariantId")%>'>
                    <%#Server.HtmlEncode(Eval("FullCountryName").ToString())%></a>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="<% $NopResources:Admin.BulkEditCountries.PublishedColumn %>"
            HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:CheckBox runat="server" Checked='<%# Eval("Published") %>' ID="cbPublished">
                </asp:CheckBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <PagerSettings PageButtonCount="50" Position="TopAndBottom" />
</asp:GridView>
<br />
<asp:Label runat="server" ID="lblNoCountriesFound" Text="<% $NopResources: Admin.BulkEditCountries.NoCountriesFound%>"
    Visible="false"></asp:Label>

