<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.RelatedProductsControl"
    CodeBehind="RelatedProducts.ascx.cs" %>
<div class="related-products-grid">
    <div class="title">
        <%=GetLocaleResourceString("Products.RelatedProducts")%>
    </div>
    <div class="clear">
    </div>
    <asp:DataList ID="dlRelatedProducts" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
        RepeatLayout="Table" OnItemDataBound="dlRelatedProducts_ItemDataBound" ItemStyle-CssClass="item-box">
        <ItemStyle HorizontalAlign="Center" />
        <ItemTemplate>
            <asp:Table runat="server" CssClass="item">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center" CssClass="product-title">
                        <asp:HyperLink ID="hlProduct" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="picture">
                        <asp:HyperLink ID="hlImageLink" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ItemTemplate>
    </asp:DataList>
</div>
