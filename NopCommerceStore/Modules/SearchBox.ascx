<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.SearchBoxControl"
    CodeBehind="SearchBox.ascx.cs" %>
<ul>
    <li>
        <asp:TextBox ID="txtSearchTerms" runat="server" SkinID="SearchBoxText" Text="<% $NopResources:Search.SearchStoreTooltip %>" />
    </li>
    <li>
        <asp:Button runat="server" OnClick="btnSearch_Click" ID="search" Text="<% $NopResources:Search.SearchButton %>"
            CssClass="searchboxbutton" CausesValidation="false"></asp:Button>
    </li>
</ul>