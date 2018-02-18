<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="About_LearningCafe_Default" %>

<%@ Register TagPrefix="Uc2" TagName="headerlinks" Src="~/Includes/Headerlinks.ascx" %>
<%@ Register TagPrefix="Uc3" TagName="headerbar" Src="~/Includes/Header.ascx" %>
<%@ Register TagPrefix="Uc4" TagName="footerbar" Src="~/Includes/footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About LearningCafe.in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="SHORTCUT ICON" href="/images/Favicon.ico" />
    <meta name="keywords" content="LMS, Learning Management System, Custom eLearning Solutions, e-learning solutions" />
    <meta name="description" content="Learningcafe.in is a point of source for custom-made e-learning solutions which caters the pedagogical requirements of any institution or organization" />
    <meta http-equiv="Resource-type" content="document" />
    <meta http-equiv="Distribution" content="global" />
    <meta http-equiv="Copyright" content="LearningCafe.in" />
    <meta http-equiv="Reply-to" content="info@LearningCafe.in" />
    <meta name="Language" content="en-us" />
    <meta name="Pragma" content="no-cache" />
    <meta name="ROBOTS" content="ALL" />
    <meta name="revisit-after" content="1 day" />
    <meta name="author" content="Team LearningCafe.in" />
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
    <Uc2:headerlinks ID="headerlinks" runat="server">
    </Uc2:headerlinks>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-28825993-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
    <script type="text/javascript">
        window.$zopim || (function (d, s) {
            var z = $zopim = function (c) { z._.push(c) }, $ = z.s =
d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
    z.set.
_.push(o)
}; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
            $.src = '//cdn.zopim.com/?1I4yy1mrxOLp3AqOR09pdiwXjhb0Yorl'; z.t = +new Date; $.
type = 'text/javascript'; e.parentNode.insertBefore($, e)
        })(document, 'script');
    </script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.slidePanel.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#panel2').slidePanel({
                triggerName: '#trigger2',
                position: 'fixed',
                triggerTopPos: '120px',

                panelTopPos: '120px'


            });


        });
    </script>
</head>
<body>
    <noscript>
        Please enable JavaScript to support all the features in this page.
    </noscript>
    <form id="frmaccounts" runat="server">
    <a href="#" id="trigger2" class="trigger right" style="height: 92px;"></a>
    <div id="panel2" class="panel right">
        <div class="feedback">
            <h3>
                Feedback</h3>
            <br />
            <ul>
                <li>
                    <label>
                        <font color="red">*</font> Name:</label><asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txt_name"
                        ErrorMessage="Enter Name">&nbsp;</asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>
                        <font color="red">*</font> Email:</label><asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txt_email"
                        ErrorMessage="Enter Email">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txt_email"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Valid Email">&nbsp;</asp:RegularExpressionValidator>
                </li>
                <li>
                    <label>
                        <font color="red">*</font> Contact No:</label><asp:TextBox ID="txt_contactno" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txt_contactno"
                        ErrorMessage="Enter Contact Number">&nbsp;</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txt_contactno"
                        ValidationExpression="^[0-9]{10}" ErrorMessage="Enter Valid Contact Number">&nbsp;</asp:RegularExpressionValidator>
                </li>
                <li>
                    <label>
                        <font color="red">*</font> Feedback:</label><asp:TextBox ID="txt_subject" TextMode="MultiLine"
                            runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txt_subject"
                        ErrorMessage="Enter Feedback">&nbsp;</asp:RequiredFieldValidator>
                </li>
                <li>
                    <label>
                        <font color="red"></font>
                    </label>
                    <asp:Image ID="imgcaptcha" Width="180px" Height="65px" runat="server" /></li>
                <li>
                    <label>
                        <font color="red">*</font> Word Verify :
                    </label>
                    <asp:TextBox ID="txtcaptcha" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtcaptcha"
                        ErrorMessage="Enter Word">&nbsp;</asp:RequiredFieldValidator>
                </li>
                <li>
                    <asp:Button ID="btn_send" runat="server" CssClass="con_btn" Text="Send Query" OnClick="btn_send_Click" />
                    <asp:Button ID="btn_reset" runat="server" CssClass="con_btn" Text="Reset" OnClick="btn_reset_Click"
                        CausesValidation="false" /></li>
                <li>
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                </li>
            </ul>
        </div>
    </div>
    <div id="wrapper">
        <!--wrapper starts here -->
        <%--<a id="hidden" class="survey" href="#divfeedback" rel="facebox" ><img alt="feedback" src="../images/sprite.png"</a>--%>
        <div class="container">
            <!--container starts here -->
            <Uc3:headerbar ID="headerbar" runat="server">
            </Uc3:headerbar>
            <div id="bodycon" class="mainhomebody">
                <div class="innerbody">
                    <div class="Contentcss">
                        <h2>
                            About LearningCafe.in</h2>
                        <p>
                            Learningcafe.in is a point of source for custom-made e-learning solutions which
                            caters the pedagogical requirements of any institution/organization with its robust
                            skill set, flexible and effortlessly adaptable features. It offers the end-to-end
                            learning requirements of employees and the students.
                        </p>
                        <p>
                            Learningcafe.in provides entire solution to track the staff/student training with
                            robust reporting system , consolidates all training information in one system, reduces
                            training costs, improves compliance with regulatory requirements, provides consistency
                            of the training.
                        </p>
                        <p>
                            Learningcafe.in leverages the power, simplicity and scalability to connect the customers,
                            partners and employees in a seamless self-serviced mode. The LMS with its state-of-the
                            art architecture fits in for any organization regardless of the domain to deliver
                            the learning solutions. This is available at an affordable price without incurring
                            a huge investment on hardware and software.
                        </p>
                        <p>
                            LearningCafe.in a product of KRV Solutions Private Limited. KRV was established
                            in 2006, with the object of creating innovative and state of the art training solutions,
                            today, we offer entire gamut of training solutions through its indigenous products
                            and services that have changed the way training and learning is implemented by organizations.
                            KRV is committed to extend state-of-the art technical expertise to corporate organizations
                            and institutions with a robust end-end enterprise wide range of training solutions.
                        </p>
                        <p>
                            KRV has earned cutting-edge substantial expertise in the areas viz. Healthcare,
                            Pharmaceutical, Educational, E-commerce and E-Learning Solution. Its information
                            technology Division develops and offers a portfolio of innovative technology-based
                            products and Data services that facilitate Online E-Learning, B2B, B2C and Mobile
                            based technologies.
                        </p>
                        <p>
                            Over seven years, KRV has been developing and implementing the Learning Management
                            System (LMS) / E-Learning solutions for various corporates in domestic and international
                            zones. The well-equipped team of experts manages E-learning projects and implements
                            the solutions with the excellent problem solving skills sets.
                        </p>
                    </div>
                </div>
                <div class="clear">
                </div>
                <!--bodycon end here -->
            </div>
            <div class="clear">
            </div>
            <!--container end here -->
        </div>
        <!--wrapper end here -->
    </div>
    <div id="footer">
        <Uc4:footerbar ID="footerbar" runat="server">
        </Uc4:footerbar>
    </div>
    </form>
</body>
</html>
