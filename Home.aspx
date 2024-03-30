<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Studbell will help you to get notifications about all the current and upcoming Jobs/Results/Admit Cards/Govt. Courses..."/>
    <meta name="keywords" content="Result,admit card,jobs,vacancy,government job,private job,part-time,government courses,latest job,notification,upssc,ssc,railways,job in india,sarkari job"/>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="shortcut icon" href="../Image/logo.ico" type="image/x-icon/" />
        <title>StudBell</title>
    <style>
        .model1 {
            display:none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }
        td{
            color:white;
        }
        .auto-style5 {
            width: 396px;
        }
    </style>
     <link rel="stylesheet" href="../css/home.css" />
    <link rel="stylesheet" href="../Register.css" />
</head>
<body>

    <a href="#cont">
        <img src="../Image/logo.png" id="top" /></a>
    <div class="head" id="cont">
        <img class="logo" src="../Image/logo copy.png" />
        <button onclick="document.getElementById('id01').style.display='block'" class="regbutton">Register with us</button>

    </div>

    <div class="box">
        <div class="container">
            <ul>
                <li><a class="style0" id="active" href="Home.aspx">Home</a></li>
                <li><a class="style0" href="job.aspx">Jobs</a></li>
                <li><a class="style0" href="Result.aspx">Results</a></li>
                <li><a class="style0" href="AdmitCard.aspx">Admit Cards</a></li>
                <li><a class="style0" href="#">Government Courses</a></li>
                <li><a class="style0" href="#foot">Contact Us</a></li>

            </ul>
        </div>

        <div class="slide-show">
            <img class="mySlides" src="../Image/slideshow/2.jpeg" style="width: 100%; height: 490px;" />
            <img class="mySlides" src="../Image/slideshow/1.jpeg" style="width: 100%; height: 490px;" />
            <img class="mySlides" src="../Image/slideshow/4.jpeg" style="width: 100%; height: 490px;" />
            <img class="mySlides" src="../Image/slideshow/5.jpeg" style="width: 100%; height: 490px;" />
        </div>
    </div>

    <form id="form2" runat="server">
         <div class="model1" id="id01" runat="server">
            <div class="register">
                <h1>Register</h1>
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
                <p>Please fill in this form to get Alerts.</p>
                <hr />
                <div class="formregister">

                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">Name*</td>
                            <td>Date Of Birth*</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:TextBox ID="uname" runat="server" TextMode="singleline"></asp:TextBox></td>
                            <td>
                                <asp:DropDownList ID="txtdd" runat="server"></asp:DropDownList>
                              <asp:DropDownList ID="txtmm" runat="server"></asp:DropDownList> 
                              <asp:DropDownList ID="txtyyyy" runat="server"></asp:DropDownList> </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Email*</td>
                            <td>Mobile Number*</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:TextBox ID="Emailtxt" runat="server" TextMode="email"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="mobtxt" runat="server" TextMode="phone"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Qualification*</td>
                            <td>State*</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:DropDownList ID="dplqualification" runat="server">
                                    <asp:ListItem>-Select-</asp:ListItem>
                                    <asp:ListItem>8th</asp:ListItem>
                                    <asp:ListItem>10nth</asp:ListItem>
                                    <asp:ListItem>12lth</asp:ListItem>
                                    <asp:ListItem>Polytechnic</asp:ListItem>
                                    <asp:ListItem>ITI</asp:ListItem>
                                    <asp:ListItem>Madical</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                    <asp:ListItem>Bechlore Degree</asp:ListItem>
                                    <asp:ListItem>Master Degree</asp:ListItem>
                                    <asp:ListItem>B-Tech</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="dl" runat="server">
                                    <asp:ListItem>Bihar</asp:ListItem>
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Hariyana</asp:ListItem>
                                    <asp:ListItem>Himanchal Pradesh</asp:ListItem>
                                    <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem>Panjab</asp:ListItem>
                                    <asp:ListItem>Rajsthan</asp:ListItem>
                                    <asp:ListItem>Uttarakhand</asp:ListItem>
                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Button CssClass="registerbtn" ID="registerbtn" runat="server" Text="Register"   OnClick="registerbtn_Click"  />
            </div>
        </div>


        <section class="provide">
            <div class="p-upper">Future Opportunities</div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studbellConnectionString2 %>" SelectCommand="SELECT TOP 7 * FROM [Links] ORDER BY [Id] DESC"></asp:SqlDataSource>
            <div class="jobs">
                <div class="f-upper">Jobs</div>
                <div class="auto-style4">
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="100%" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                        <AlternatingItemStyle BackColor="White" Font-Names="Arial" ForeColor="#009933" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <asp:LinkButton ID="linkadmit" runat="server" Text='<%# Eval("Jobs") %>' Font-Size="16"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </div>
                <a href="Job.aspx" class="more">+More</a>
            </div>

            <div class="admit">
                <div class="f-upper">Admit Cards</div>
                <div class="auto-style4">
                    <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" Width="100%" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand">
                        <AlternatingItemStyle BackColor="White" Font-Names="Arial" ForeColor="#009933" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("link") %>' Font-Size="16"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studbellConnectionString2 %>" SelectCommand="SELECT TOP 7  [link] FROM [Admitcard] ORDER BY [Id] DESC"></asp:SqlDataSource>

                </div>
                <a href="AdmitCard.aspx" class="more">+More</a>
            </div>

            <div class="results">
                <div class="f-upper">Results</div>
                <div class="auto-style4">
                    <asp:DataList ID="DataList3" runat="server" CellPadding="4" ForeColor="#333333" Width="100%" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand">
                        <AlternatingItemStyle BackColor="White" Font-Names="Arial" ForeColor="#009933" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <asp:LinkButton ID="Linkresulthome" runat="server" Text='<%# Eval("Linkname") %>' Font-Size="16"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:studbellConnectionString2 %>" SelectCommand="SELECT TOP 7 [Linkname] FROM [Results] ORDER BY [id] DESC"></asp:SqlDataSource>
                </div>
                <a href="Result.aspx" class="more">+More</a>
            </div>
        </section>

        <section class="quote-box">
            <div class="q-uper">Refresh Your Mood</div>
            <div class="quotes">
                <div class="quote-slide">
                    <asp:Label ID="Q1" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ1" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <div class="quote-slide">
                    <asp:Label ID="Q2" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ2" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <div class="quote-slide">
                    <asp:Label ID="Q3" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ3" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <div class="quote-slide">
                    <asp:Label ID="Q4" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ4" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <div class="quote-slide">
                    <asp:Label ID="Q5" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ5" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <div class="quote-slide">
                    <asp:Label ID="Q6" runat="server" Text=""></asp:Label><br />
                    <br />
                    <asp:Label ID="WQ6" runat="server" Text="" CssClass="writer"></asp:Label>
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>

            <div class="dot-container">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
                <span class="dot" onclick="currentSlide(6)"></span>
            </div>
        </section>

        <section class="our">
            <div class="about-box">
                <div class="upper">About Us</div>
                <p>Studbell gives you an alert of all current information about the course you are appearing for.It provides job alerts for those who have completed their studies and searching jobs.Here are government courses for those who are intrested.</p>
            </div>
        </section>

        <div class="accord" id="foot">
            <div class="uper1">
                Help Us To Improve And Make a suggestion
            </div>

        </div>

        <footer class="footer" id="foot1">
            <section class="f-section">
                <div class="things">
                    <a class="link">Follow Us</a><br />
                    <img class="icon" src="../Image/twit2.png" style="width: 20px; height: 20px;" />
                    <a class="links" href="https://Twitter.com/StudBell" target="_blank">Twitter</a><br />
                    <img class="icon" src="../Image/insta1.png" style="width: 20px; height: 20px;" />
                    <a class="links" href="https://Instagram.com/studbell.com2018" target="_blank">Instagram</a><br />
                    <img class="icon" src="../Image/fb1.png" style="width: 20px; height: 20px;" />
                    <a class="links" href="https://Facebook.com/studbellcom-395942790886811.com" target="_blank">Facebook</a><br />
                    <img class="icon" src="../Image/google2.png" style="width: 20px; height: 20px;" />
                    <a class="links" href="https://Plus.google.com/114781087151397271188" target="_blank">Google+</a><br />
                </div>

                <div class="things">
                    <a class="link">Quick Links</a><br />
                    <a class="links" href="#">Home</a><br />
                    <a class="links" href="#">Jobs</a><br />
                    <a class="links" href="#">Results</a><br />
                    <a class="links" href="#">Admit Cards</a><br />
                </div>

                <div class="things">
                    <a class="link">Legal</a><br />
                    <a class="links" href="#">About Us</a><br />
                    <a class="links" href="#">Privacy policy</a><br />
                </div>

                <div class="contact">
                    <div class="us">Contact Us</div>
                    <br />
                    <table>
                        <tr>
                            <td style="color:white">Name*</td>
                            <td style="color:white">Email Address*</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtname" runat="server" TextMode="SingleLine"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="Txtmail" runat="server" TextMode="email"></asp:TextBox></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td style="color:white">Subject*</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="Subtext" runat="server" TextMode="SingleLine"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="color:white">Message*</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="messText" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="B5" runat="server" Text="Submit" Font-Bold="True" OnClick="B5_Click" /></td>
                            <td>
                                <asp:Label ID="lbldpl" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </div>
            </section>
            <div class="down">&#169;2018.StudBell.Com.All Right Reserved.</div>

        </footer>

        <script>
            var myIndex = 0;
            slide();

            function slide() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) { myIndex = 1 }
                x[myIndex - 1].style.display = "block";
                setTimeout(slide, 5000);
            }
        </script>

        <script>
            var quoteIndex = 1;
            showSlides(quoteIndex);

            function plusSlides(n) {
                showSlides(quoteIndex += n);
            }

            function currentSlide(n) {
                showSlides(quoteIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("quote-slide");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) { quoteIndex = 1 }
                if (n < 1) { quoteIndex = slides.length }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[quoteIndex - 1].style.display = "block";
                dots[quoteIndex - 1].className += " active";
            }
        </script>
        <script>
            var modal = document.getElementById('id01');

            window.open = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>


    </form>


</body>
</html>
