<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CartDropDown.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.CartDropDown" %>

<asp:Panel class="order-summary-content" runat="server" ID="pnlEmptyCart">
    <%=GetLocaleResourceString("ShoppingCart.CartIsEmpty")%>
</asp:Panel>
<asp:Panel class="order-summary-content" runat="server" ID="pnlCart">
    <asp:Panel runat="server" ID="pnlCommonWarnings" CssClass="warning-box" EnableViewState="false"
        Visible="false">
        <asp:Label runat="server" ID="lblCommonWarning" CssClass="warning-text" EnableViewState="false"
            Visible="false"></asp:Label>
    </asp:Panel>
    <table class="cart">
        <%if (IsShoppingCart)
          { %>
        <col width="1" />
        <%} %>
        <%if (this.SettingManager.GetSettingValueBoolean("Display.Products.ShowSKU"))
          {%>
        <col width="1" />
        <%} %>
        <%if (this.SettingManager.GetSettingValueBoolean("Display.ShowProductImagesOnShoppingCart"))
          {%>
        <col width="1" />
        <%} %>
        <col />
        <col width="1" />
        <col width="1" />
        <col width="1" />
        <thead>
            <tr class="cart-header-row">
                <%if (IsShoppingCart)
                  { %>
                <th>
                    <%=GetLocaleResourceString("ShoppingCart.Remove")%>
                </th>
                <%} %>
                <%if (this.SettingManager.GetSettingValueBoolean("Display.Products.ShowSKU"))
                  {%>
                <th>
                    <%=GetLocaleResourceString("ShoppingCart.SKU")%>
                </th>
                <%} %>
                <%if (this.SettingManager.GetSettingValueBoolean("Display.ShowProductImagesOnShoppingCart"))
                  {%>
                <th class="picture">
                </th>
                <%} %>
                <th>
                    <%=GetLocaleResourceString("ShoppingCart.Product(s)")%>
                </th>
                <th>
                    <%=GetLocaleResourceString("ShoppingCart.UnitPrice")%>
                </th>
                <th>
                    <%=GetLocaleResourceString("ShoppingCart.Quantity")%>
                </th>
                <th class="end">
                    <%=GetLocaleResourceString("ShoppingCart.ItemTotal")%>
                </th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptShoppingCart" runat="server">
                <ItemTemplate>
                    <tr class="cart-item-row">
                        <%if (IsShoppingCart)
                          { %>
                        <td>
                            <asp:CheckBox runat="server" ID="cbRemoveFromCart" />
                        </td>
                        <%} %>
                        <%if (this.SettingManager.GetSettingValueBoolean("Display.Products.ShowSKU"))
                          {%>
                        <td style="white-space: nowrap;">
                            <%#Server.HtmlEncode(((ShoppingCartItem)Container.DataItem).ProductVariant.SKU)%>
                        </td>
                        <%} %>
                        <%if (this.SettingManager.GetSettingValueBoolean("Display.ShowProductImagesOnShoppingCart"))
                          {%>
                        <td class="productpicture">
                            <asp:Image ID="iProductVariantPicture" runat="server" ImageUrl='<%#GetProductVariantImageUrl((ShoppingCartItem)Container.DataItem)%>'
                                AlternateText="Product picture" />
                        </td>
                        <%} %>
                        <td class="product">
                            <a href='<%#GetProductUrl((ShoppingCartItem)Container.DataItem)%>' title="View details">
                                <%#Server.HtmlEncode(GetProductVariantName((ShoppingCartItem)Container.DataItem))%></a>
                            <%#GetAttributeDescription((ShoppingCartItem)Container.DataItem)%>
                            <%#GetRecurringDescription((ShoppingCartItem)Container.DataItem)%>
                            <asp:Panel runat="server" ID="pnlWarnings" CssClass="warning-box" EnableViewState="false"
                                Visible="false">
                                <asp:Label runat="server" ID="lblWarning" CssClass="warning-text" EnableViewState="false"
                                    Visible="false"></asp:Label>
                            </asp:Panel>
                        </td>
                        <td style="white-space: nowrap;">
                            <%#GetShoppingCartItemUnitPriceString((ShoppingCartItem)Container.DataItem)%>
                        </td>
                        <td style="white-space: nowrap;">
                            <%if (IsShoppingCart)
                              { %>
                            <asp:TextBox ID="txtQuantity" size="4" runat="server" Text='<%# Eval("Quantity") %>'
                                SkinID="ShoppingCartQuantityText" />
                            <%}
                              else
                              { %>
                            <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' CssClass="Label" />
                            <%} %>
                        </td>
                        <td style="white-space: nowrap;" class="end">
                            <%#GetShoppingCartItemSubTotalString((ShoppingCartItem)Container.DataItem)%>
                            <asp:Label ID="lblShoppingCartItemId" runat="server" Visible="false" Text='<%# Eval("ShoppingCartItemId") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Panel>