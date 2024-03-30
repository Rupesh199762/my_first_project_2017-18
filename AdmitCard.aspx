<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdmitCard</title>
    <style>
        .Rupesh {
    width: 396px;
}
    </style>

    <meta name="description" content="From Studbell you can get your Admit cards. Are you waiting for exams?...Get your admit cards from here."/>
    <meta name="keywords" content="Result,admit card,jobs,vacancy,government job,private job,part-time,government courses,latest job,notification,upssc,ssc,railways,job in india,sarkari job"/>

    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="shortcut icon" href="../Image/logo.ico" type="image/x-icon/" />
    <link rel="stylesheet" href="~/css/same.css" />
    <link rel="stylesheet" href="~/css/admitcard.css" />
    <link href="../Register.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/gridViewStyleSheet.css" />

</head>
<body>
    <div class="auto-style4" id="cont">
        <img class="logo" src="../Image/logo copy.png" />
    </div>

    <div class="box">
        <div class="container">
            <ul>
                <li><a class="style0" href="Home.aspx">Home</a></li>
                <li><a class="style0" href="Job.aspx">Jobs</a></li>
                <li><a class="style0" href="Result.aspx">Results</a></li>
                <li><a class="style0" id="active" href="#">Admit Cards</a></li>
                <li><a class="style0" href="#">Government Courses</a></li>
                <li><a class="style0 regbtn" onclick="document.getElementById('id01').style.display='block'">Register</a></li>
            </ul>
        </div>


        <form id="form1" runat="server">
            <section class="sec1">
                <div style="width: 100%; height: 250px;">
                    <div class="up">
                        Admit Card-<asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="9" PagerStyle-CssClass="page" CssClass="gridViewText">
                            <AlternatingRowStyle BackColor="Gainsboro" />
                            <Columns>
                                <asp:BoundField DataField="Institute" HeaderText="Institute/Company Name" SortExpression="Institute">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Link" SortExpression="link">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Admitlinkbtns" runat="server" OnClick="Admitlinkbtns_click" Text='<%# Eval("link") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Height="40px" HorizontalAlign="Center" Width="200px" />
                                    <ItemStyle HorizontalAlign="Center" Width="250px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-T47B23F;Initial Catalog=studbell;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Admitcard] ORDER BY [Id] DESC"></asp:SqlDataSource>
                </div>
            </section>


            <div class="model" id="id01">
            <div class="register">
                <h1>Register</h1>
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
                <p>Please fill in this form to get Alerts.</p>
                <hr />
                <div class="formregister">

                    <table class="auto-style3">
                        <tr>
                            <td class="Rupesh">Name*</td>
                            <td>Date Of Birth*</td>
                        </tr>
                        <tr>
                            <td class="Rupesh">
                                <asp:TextBox ID="uname" runat="server" TextMode="singleline"></asp:TextBox></td>
                          <td>
                              <asp:DropDownList ID="txtdd" runat="server"></asp:DropDownList>
                              <asp:DropDownList ID="txtmm" runat="server"></asp:DropDownList> 
                              <asp:DropDownList ID="txtyyyy" runat="server"></asp:DropDownList> 
                          </td>
                        
                        </tr>
                        <tr>
                            <td class="Rupesh">Email*</td>
                            <td>Mobile Number*</td>
                        </tr>
                        <tr>
                            <td class="Rupesh">
                                <asp:TextBox ID="Emailtxt" runat="server" TextMode="email"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="mobtxt" runat="server" TextMode="phone"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="Rupesh">Qualification*</td>
                            <td>State*</td>
                        </tr>
                        <tr>
                            <td class="Rupesh">
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
                                    <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                                    <asp:ListItem>Himanchal Pradesh</asp:ListItem>
                                    <asp:ListItem>Panjab</asp:ListItem>
                                    <asp:ListItem>Uttarakhand</asp:ListItem>
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Hariyana</asp:ListItem>
                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem>Rajsthan</asp:ListItem>
                                    <asp:ListItem>Bihar</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Button CssClass="registerbtn" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click1" />
            </div>
        </div>


        </form>
    </div>
    <footer class="footer1">
        <div class="down">&#169;2018.StudBell.Com.All Right Reserved.</div>
    </footer>

</body>
</html>
