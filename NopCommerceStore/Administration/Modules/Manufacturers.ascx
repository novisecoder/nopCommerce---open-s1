<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Administration.Modules.ManufacturersControl"
    CodeBehind="Manufacturers.ascx.cs" %>

<%@ Register TagPrefix="nopCommerce" TagName="ConfirmationBox" Src="ConfirmationBox.ascx" %>

<div class="section-header">
    <div class="title">
        <img src="Common/ico-catalog.png" alt="<%=GetLocaleResourceString("Admin.Manufacturers.Title")%>" />
        <%=GetLocaleResourceString("Admin.Manufacturers.Title")%>
    </div>
    <div class="options">
        <input type="button" onclick="location.href = 'ManufacturerAdd.aspx'" value="<%=GetLocaleResourceString("Admin.Manufacturers.AddButton.Text")%>"
            id="btnAddNew" class="adminButtonBlue" title="<%=GetLocaleResourceString("Admin.Manufacturers.AddButton.Tooltip")%>" />
        <asp:Button runat="server" Text="<% $NopResources:Admin.Manufacturers.ExportXMLButton.Text %>"
            CssClass="adminButtonBlue" ID="btnExportXML" OnClick="btnExportXML_Click" ValidationGroup="ExportXML"
            ToolTip="<% $NopResources:Admin.Manufacturers.ExportXMLButton.Tooltip %>" />
        <asp:Button runat="server" Text="Delete Selected"
            CssClass="adminButtonBlue" ID="btnDelete" OnClick="btnDelete_Click" />
        <nopCommerce:ConfirmationBox runat="server" ID="cbDelete" TargetControlID="btnDelete"
            YesText="<% $NopResources:Admin.Common.Yes %>" NoText="<% $NopResources:Admin.Common.No %>"
            ConfirmText="<% $NopResources:Admin.Common.AreYouSure %>" />

    </div>
</div>
<script type="text/javascript">

    $(window).bind('load', function() {
        var cbHeader = $(".cbHeader input");
        var cbRowItem = $(".cbRowItem input");
        cbHeader.bind("click", function() {
            cbRowItem.each(function() { this.checked = cbHeader[0].checked; })
        });
        cbRowItem.bind("click", function() { if ($(this).checked == false) cbHeader[0].checked = false; });
    });
    
    function ChildBlock(img, obj) {
        if (obj.style.display == 'none') {
            obj.style.display = '';
            img.src = "<%=CommonHelper.GetStoreLocation()%>images/collapse.png";
        }
        else {
            obj.style.display = 'none';
            img.src = "<%=CommonHelper.GetStoreLocation()%>images/expand.png";
        }
    }
</script>
<table class="adminContent">
    <asp:GridView ID="gvManufacturers" runat="server" AutoGenerateColumns="False" Width="100%"
    OnPageIndexChanging="gvManufacturers_PageIndexChanging" AllowPaging="true" PageSize="15">
        <Columns>
            <asp:TemplateField ItemStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                <HeaderTemplate>
                    <asp:CheckBox ID="cbSelectAll" runat="server" CssClass="cbHeader" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="cbManufacturer" runat="server" CssClass="cbRowItem" />
                    <asp:HiddenField ID="hfManufacturerId" runat="server" Value='<%# Eval("ManufacturerId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="<% $NopResources:Admin.Manufacturers.Name %>" ItemStyle-Width="65%">
                <ItemTemplate>
                    <%#Server.HtmlEncode(Eval("Name").ToString())%>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="<% $NopResources:Admin.Manufacturers.Published %>"
                HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <nopCommerce:ImageCheckBox runat="server" ID="cbPublished" Checked='<%# Eval("Published") %>'>
                    </nopCommerce:ImageCheckBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="<% $NopResources:Admin.Manufacturers.Edit %>" HeaderStyle-HorizontalAlign="Center"
                ItemStyle-Width="20%" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <a href="ManufacturerDetails.aspx?ManufacturerID=<%#Eval("ManufacturerId")%>" title="<%#GetLocaleResourceString("Admin.Manufacturers.Edit.Tooltip")%>">
                        <%#GetLocaleResourceString("Admin.Manufacturers.Edit")%>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    <PagerSettings PageButtonCount="50" Position="TopAndBottom" />
    </asp:GridView>
</table>
