<%@ Page Title="ABCW - Contact us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <!-- Page Header Section Start Here -->

    <style>
        .contact-form .comment-form input[type="text"], .contact-form .comment-form [type="email"] {
  padding: 10px 15px;
  border: 1px solid #f0f0f0;
  background: #fff;
  width: 100%;
  margin-bottom: 15px;
}
    </style>
    <section class="page-header bg_img padding-tb">
        <div class="overlay"></div>
        <div class="container">
            <div class="page-header-content-area">
                <h4 class="ph-title" style="font-size:60px">Contact Us</h4>
                <ul class="agri-ul">
                   <%-- <li><a href="index.html">Home</a></li>
                    <li><a class="active">Contact Us</a></li>--%>
                </ul>
            </div>
        </div>
    </section>
    <!-- Page Header Section Ending Here -->

    <!-- Contact Us Section Start Here -->
     <div class="contact-section padding-tb">
            <div class="container">
                <div class="contac-top">
                    <div class="row justify-content-center">
                        <div class="col-xl-4 col-lg-6 col-12">
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="icofont-google-map"></i>
                                </div>
                                <div class="contact-details" >
                                    <div class="banner-desc" style="font-size: 18px;">
                                        1, Sukirti Anaxy,
                                        Besides Prernatirth Bunglows Part - 2,
                                        Opp. Shreyas Park Society,
                                        ISRO colony Road,
                                        Satellite, Ahmedabad - 380015
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-12">
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="icofont-phone"></i>
                                </div>
                                <div class="banner-desc" style="font-size:18px;">
                                    +91 95109 50120
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-12">
                            <div class="contact-item">
                                <div class="contact-icon">
                                    <i class="icofont-envelope"></i>
                                </div>
                                <div class="banner-desc" style="font-size: 18px;">
                                    info@ashabenchikkiwala.com
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contac-bottom">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-12">
                            <div class="location-map">
                                <div id="map">
                                    <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.2275990947564!2d90.3869883144556!3d23.739261895119842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b85c740f17d1%3A0xdd3daab8c90eb11f!2sCodexCoder!5e0!3m2!1sen!2sbd!4v1572866170296!5m2!1sen!2sbd" allowfullscreen=""></iframe>--%>
                                    <%--<iframe src="https://maps.google.com/maps?q=1, Sukirti Anaxy, Besides Prernatirth Bunglows Part - 2, Opp. Shreyas Park Society, ISRO colony Road, Satellite, Ahmedabad - 380015&t=&z=10&ie=UTF8&iwloc=&output=embed" allowfullscreen=""></iframe>--%>
                                    <iframe src="https://maps.google.com/maps?q=1, Sukirti Anaxy, Besides Prernatirth Bunglows Part - 2, Opp. Shreyas Park Society, ISRO colony Road, Satellite, Ahmedabad - 380015&t=&z=10&ie=UTF8&iwloc=&output=embed" allowfullscreen=""></iframe>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="contact-form">
                                <form action="#" method="POST" id="commentform" class="comment-form">
                                    
                                    <input type="text" class="form-control" id="txtName" name="c_fname"   placeholder="Name*"/>
                                    <input type="email" name="email" class=""  id="txtEmailid" placeholder="Email*">
                                    <input type="text" name="subject" class=""  id="txtMailSubject" placeholder="Subject*">
                                    <textarea name="text" cols="30" rows="10"  id="txtMailBody" placeholder="Message*"></textarea>
                                    <input type="submit" id="btnsendMail" class="lab-btn" value="Send Message"/>
                                </form>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
   

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
    
      
        $("#btnsendMail").click(function (e) {
            e.preventDefault();
            if ($('#txtName').val() == "") {
                alert("Please Enter  Name");
                return;
            }
            if ($('#txtEmailid').val() == "") {
                alert("Please Enter Email Address");
                return;
            }
            if (!ValidateEmail($('#txtEmailid').val())) {
                return;
            }
            if ($('#txtMailSubject').val() == "") {
                alert("Please Enter  Subject");
                return;
            }

            if ($('#txtMailBody').val() == "") {
                alert("Please Enter  Mail Body");
                return;
            }

            //alert($('#txtName').val());
            //alert($('#txtEmailid').val());
            //alert($('#txtMailSubject').val());
            //alert($('#txtMailBody').val());

            $.ajax({
                type: "Post",
                url: 'Contactus.aspx/SendMail_ContactUs',
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                data: "{Name:'" + $('#txtName').val() + "',Emailid:'" + $('#txtEmailid').val() + "',MailSubject: '" + $('#txtMailSubject').val() + "',MailBody:' " + $('#txtMailBody').val() + "'}",
                async: false,
                success: function (Data) {
                    alert(Data.d.Data);
                    $('#txtName').val('');
                    $('#txtEmailid').val('');
                    $('#txtMailSubject').val('');
                    $('#txtMailBody').val('');
                },
                error: function (d)
                {
                    alert("something went to wrong ..!");
                }
            });
        });

        function ValidateEmail(mail) {
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

            if (reg.test(mail) == false) {
                alert('Invalid Email Address');
                return false;
            }

            return true;
        }

    
    </script>
</asp:Content>

