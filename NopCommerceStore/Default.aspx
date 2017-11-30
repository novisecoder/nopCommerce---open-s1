<%@ Page Language="C#" MasterPageFile="~/MasterPages/Main.master" AutoEventWireup="true" EnableEventValidation="true"
    Inherits="NopSolutions.NopCommerce.Web.Default" CodeBehind="Default.aspx.cs" Title="Welcome to Ava Productions! Your Source for Batteries, Shavers, Zippo and More !!!" %>

<%@ Register TagPrefix="nopCommerce" TagName="HomePagePoll" Src="~/Modules/HomePagePoll.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageNews" Src="~/Modules/HomePageNews.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageCategories" Src="~/Modules/HomePageCategories.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="HomePageProducts" Src="~/Modules/HomePageProducts.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="BestSellers" Src="~/Modules/BestSellers.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>
<%@ Register TagPrefix="EShopper" TagName="Slider" Src="~/Modules/EShopperSlider.ascx" %>
<%@ Register TagPrefix="EShopper" TagName="Sidebar" Src="~/Modules/EShopperSidebar.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="container" style="align-self: center;">
        <div class="row">
            <nopCommerce:Topic ID="topicHomePageText" runat="server" TopicName="HomePageText"
                OverrideSEO="false"></nopCommerce:Topic>
            <div class="clear">
            </div>
        </div>
        <div class="row">
            <EShopper:Slider ID="Slider" runat="server" />
            <div class="col-lg-4" style="align-self: initial">
                <EShopper:Sidebar ID="Sidebar" runat="server" />
            </div>
            <div class="col-lg-6">
                <nopCommerce:HomePageProducts ID="ctrlHomePageProducts" runat="server" />
                <div class="clear">
                </div>
                <nopCommerce:BestSellers ID="ctrlBestSellers" runat="server" />
                <div class="clear">
                </div>
                <nopCommerce:HomePageNews ID="ctrlHomePageNews" runat="server" />
                <div class="clear">
                </div>
                <nopCommerce:HomePagePoll ID="ctrlPolls" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
