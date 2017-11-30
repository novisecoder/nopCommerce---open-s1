<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CountryVariants.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Administration.Modules.CountryVariants" %>
<%@ Register TagPrefix="nopCommerce" TagName="NumericTextBox" Src="NumericTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="SimpleTextBox" Src="SimpleTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ToolTipLabel" Src="ToolTipLabelControl.ascx" %>
<table class="adminContent">
    <tr>
        <td width="100%">
            <asp:GridView ID="gvCountryVariants" runat="server" AutoGenerateColumns="false" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="<% $NopResources:Admin.Country.CountryVariants.Name %>"
                        ItemStyle-Width="35%">
                        <ItemTemplate>
                            <%#Server.HtmlEncode(GetCountryVariantName(Container.DataItem as CountryVariant))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SKU" HeaderText="<% $NopResources:Admin.Country.CountryVariants.SKU %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="<% $NopResources:Admin.Country.CountryVariants.Price %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:G}">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="<% $NopResources:Admin.Country.CountryVariants.StockQuantity %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#Server.HtmlEncode(GetStockQuantity(Container.DataItem as CountryVariant))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DisplayOrder" HeaderText="<% $NopResources:Admin.Country.CountryVariants.DisplayOrder %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="<% $NopResources:Admin.Country.CountryVariants.Published %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <nopCommerce:ImageCheckBox runat="server" ID="cbPublished" Checked='<%# Eval("Published") %>'>
                            </nopCommerce:ImageCheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="<% $NopResources:Admin.Country.CountryVariants.View %>"
                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <a href='CountryVariantDetails.aspx?CountryVariantID=<%#Eval("CountryVariantId")%>'
                                title="<%#GetLocaleResourceString("Admin.Country.CountryVariants.View")%>">
                                <%#GetLocaleResourceString("Admin.Country.CountryVariants.View")%></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
<p>
    <input type="button" onclick="location.href='CountryVariantAdd.aspx?CountryID=<%=CountryId%>'"
        value="<%=GetLocaleResourceString("Admin.Country.CountryVariants.AddButton.Text")%>"
        id="btnAddNewVariant" class="adminButton" title="<%=GetLocaleResourceString("Admin.Country.CountryVariants.AddButton.Tooltip")%>" />
</p>
