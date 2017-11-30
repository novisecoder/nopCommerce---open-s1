<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.HomePageCategories"
    CodeBehind="HomePageCategories.ascx.cs" %>
<div class="home-page-category-grid">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
        RepeatLayout="Table" ItemStyle-CssClass="item-box" EnableViewState="false">
        <ItemTemplate>
            <div class="category-item">
                <h2 class="title">
                    <asp:HyperLink ID="hlCategory" runat="server" Text='<%#Server.HtmlEncode(Eval("LocalizedName").ToString()) %>' />
                    </h2>
                <div class="picture">
                    <asp:HyperLink ID="hlImageLink" runat="server" />
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>

<asp:Panel ID="pnlParent" runat="server">
   <asp:Panel ID="pnlTitle" runat="server" HorizontalAlign="Left">      
      <asp:Label ID="lblTitle" runat="server" Text="Slide Show" 

           Font-Bold="True" Font-Names="Garamond" ForeColor="#404040">
      </asp:Label>
   </asp:Panel>
   <asp:Panel ID="pnlBase" runat="server">
      <table id="tblBase" border="0" runat="server" style="position:absolute; left: 0px;">
         <tr>
            <td>
    <asp:DataList ID="dlCategories" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" OnItemDataBound="dlCategories_ItemDataBound" ItemStyle-CssClass="item-box" EnableViewState="false">
        <ItemTemplate>
            <div class="product-item">
                <div class="picture">
                    <asp:HyperLink ID="hlImageLink" runat="server" />
                </div>
                <h2 class="product-title">
                    <asp:HyperLink ID="hlProduct" runat="server" />
                </h2>
            </div>
        </ItemTemplate>
    </asp:DataList>
            </td>
         </tr>
      </table>
    </asp:Panel>
    <asp:Panel ID="pnlNavigation" runat="server" BackColor="#E0E0E0">
       <asp:HyperLink ID="aLeft" runat="server"></asp:HyperLink>
       <asp:HyperLink ID="aRight" runat="server"></asp:HyperLink>
    </asp:Panel>
</asp:Panel> 