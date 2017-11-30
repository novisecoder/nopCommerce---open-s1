<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ContactUsControl"
    CodeBehind="ContactUs.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="SimpleTextBox" Src="~/Modules/SimpleTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="EmailTextBox" Src="~/Modules/EmailTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="Topic" Src="~/Modules/Topic.ascx" %>


<div class="contact-form">
    <div>
        <nopCommerce:Topic ID="topicContactUs" runat="server" TopicName="ContactUs" OverrideSEO="false">
        </nopCommerce:Topic>
    </div>
    <div class="clear">
    </div>
    <asp:Panel runat="server" ID="pnlResult" Visible="false" CssClass="result">
        <strong>
            <%=GetLocaleResourceString("ContactUs.YourEnquiryHasBeenSent")%></strong>
    </asp:Panel>
    <div class="clear">
    </div>
</div>
    <!-->
<div id="pnlContactUs" runat="server" class="container">
    <div class="bg">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="title text-center">Contact <strong>Us</strong></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <div class="contact-form">
                    <table class="table-container">

                        <tr class="row">
                            <td class="item-name">
                                <%=GetLocaleResourceString("ContactUs.FullName")%>:
                            </td>
                            <td class="item-value">

                            </td>
                        </tr>
                        <tr class="row">
                            <td class="item-name">
                                <%=GetLocaleResourceString("ContactUs.E-MailAddress")%>:
                            </td>
                            <td class="item-value">
                                <nopCommerce:EmailTextBox runat="server" ID="txtEmail" ValidationGroup="ContactUs"
                                    Width="250px"></nopCommerce:EmailTextBox>
                            </td>
                        </tr>
                        <tr class="row">
                            <td class="item-name">
                                <%=GetLocaleResourceString("ContactUs.Enquiry")%>:
                            </td>
                            <td class="item-value">
                                <asp:TextBox runat="server" ID="txtEnquiry" TextMode="MultiLine" SkinID="ContactUsEnquiryText"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="row">
                            <td class="item-name"></td>
                            <td class="button">
                                <asp:Button runat="server" ID="btnContactUs" Text="<% $NopResources:ContactUs.ContactUsButton %>"
                                    ValidationGroup="ContactUs" OnClick="btnContactUs_Click" CssClass="contactusbutton"></asp:Button>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-info">
                    <div class="social-networks">
                        <h2 class="title text-center">Find us on Social Media</h2>
                        <ul>
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--/#contact-page-->

<div id="contact-page" class="container">
    <div class="bg">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="title text-center">Contact <strong>Us</strong>
                </h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <h2 class="title text-center">Get in Touch</h2>
                <div class="status alert alert-success" style="display:none"></div>
                <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                    <div class="form-group col-md-6">
                        <nopCommerce:SimpleTextBox runat="server" ID="txtFullName" Text="Name" ValidationGroup="ContactUs"
                            Width="250px"></nopCommerce:SimpleTextBox>

                    </div>
                    <div class="form-group col-md-6">
                        <input type="email" name="email" class="form-control" required="required" placeholder="<%=GetLocaleResourceString("ContactUs.E-MailAddress")%>:" />
                    </div>
                    <div class="form-group col-md-6">
                        <input type="text" name="subject" class="form-control" required="required" placeholder="Subject: " />
                    </div>
                    <div class="form-group col-md-12">
                        <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                    </div>
                    <div class="form-group col-md-12">
                        <asp:Button runat="server" ID="Button1" Text="<% $NopResources:ContactUs.ContactUsButton %>"
                            ValidationGroup="ContactUs" OnClick="btnContactUs_Click" CssClass="contactusbutton"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>