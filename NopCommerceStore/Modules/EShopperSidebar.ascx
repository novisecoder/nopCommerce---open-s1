<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EShopperSidebar.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.EShopperSidebar" %>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Shop by Categories</h2>
                    <div class="brands-name">
                    <!--category-productsr-->
                    <ul class="nav nav-pills nav-stacked">
                        <li style="font-size: large; font-weight:bold">
                            <asp:Repeater runat="server" ID="rptrCategories">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hlCategory" runat="server" Text='<%# Server.HtmlEncode(Eval("LocalizedName").ToString()) %>'
                                        NavigateUrl='<%# SEOHelper.GetCategoryUrl((Category)(Container.DataItem)) %>' />
                                </ItemTemplate>
                            </asp:Repeater>
                        </li>
                    </ul>
                        </div>
                    <br />
                    <!--/category-products-->
                    <!--manufactuers_products-->
                    <div class="brands_products">
                        <h2>Shop by Brand</h2>
                        <div class="brands-name">
                            <ul class="nav nav-pills nav-stacked">
                                <li style="font-size: large; font-weight: bold">
                                    <asp:Repeater runat="server" ID="rptrManufacturers">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hlManufacturer" runat="server" Text='<%#Server.HtmlEncode(Eval("LocalizedName").ToString()) %>'
                                                NavigateUrl='<%#SEOHelper.GetManufacturerUrl((Manufacturer)(Container.DataItem)) %>' />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--/manufactuers_products-->
            </div>
        </div>
    </div>
</section>