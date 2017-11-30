<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Modules.CategoryNavigation" Codebehind="CategoryNavigation.ascx.cs" %>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="left-sidebar">
                <h2>
                    <%=GetLocaleResourceString("Category.Categories")%>
                </h2>
                <div class="panel-group category products" id="accordian">
                    <div class="clear"></div>
                    <div class="panel-group category-products">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <asp:PlaceHolder runat="server" ID="phCategories" EnableViewState="false" />
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
