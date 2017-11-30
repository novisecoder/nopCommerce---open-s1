<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EShopperSlider.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.EShopperSlider" %>
<body>
    <section id="slider">
        <!--slider-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-6">
                                    <a href="../RecentlyAddedProducts.aspx"><h1><span>Welcome to Ava Productions</span></h1></a>
                                    <br />
                                    <a href="../RecentlyAddedProducts.aspx"><p><b>The only source for the best prices on Batteries, Shavers, Zippo Lighters, and More</b></p></a>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                                <div class="col-sm-6">
                                    <asp:ImageButton runat="server" PostBackUrl="~/RecentlyAddedProducts.aspx" ImageUrl="../images/Slider/Slide 1.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>E</span>-SHOPPER</h1>
                                    <h2>100% Responsive Design</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
                                </div>
                                <div class="col-sm-6">
                                    <asp:Image runat="server" ImageAlign="Right" ImageUrl="../images/Batteries/D1616.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>E</span>-SHOPPER</h1>
                                    <h2>Free Ecommerce Template</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Get it now</button>
                                </div>
                                <div class="col-sm-6">
                                    <img src="../images/Batteries/D1620.jpg" class="girl img-responsive" alt="" />
                                </div>
                            </div>

                        </div>

                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--/slider-->
</body>
