<%@ Page Language="C#" AutoEventWireup="true" CodeFile="job.aspx.cs" Inherits="job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
          .autostylejob {
    width: 396px;
}
    </style>
    <meta name="viewport" content="width=device-width,initial-scale=1" />

    <meta name="description" content="Do you have needs, Do you want them fulfilled, Get a job from here. Studbell provides all kinds of jobs and can improve your skills."/>
    <meta name="keywords" content="Result,admit card,jobs,vacancy,government job,private job,part-time,government courses,latest job,notification,upssc,ssc,railways,job in india,sarkari job"/>


    <link rel="shortcut icon" href="../Image/logo.ico" type="image/x-icon/" />
    <link rel="stylesheet" href="~/css/same.css" />
    <link rel="stylesheet" href="../Register.css" />
    <link rel="stylesheet" href="~/css/jobcss.css" />
    <link rel="stylesheet" href="../css/gridViewStyleSheet.css" />
       <title>Jobs</title>
   
</head>
<body>
    <!-- <a href="#cont">
        <img src="top.png" id="top" /></a>-->
    <div class="auto-style5" id="cont">
        <img class="auto-style4" src="../Image/logo copy.png" />
    </div>




    <div class="box">
        <div class="container">
            <ul>
                <li><a class="style0" href="Home.aspx">Home</a></li>
                <li><a class="style0" id="active" href="Jobs.aspx">Jobs</a></li>
                <li><a class="style0" href="Result.aspx">Results</a></li>
                <li><a class="style0" href="AdmitCard.aspx">Admit Cards</a></li>
                <li><a class="style0" href="#">Government Courses</a></li>
                <li><a class="style0 regbtn" onclick="document.getElementById('id01').style.display='block'">Register</a></li>
            </ul>
        </div>
        <form id="form5" runat="server">

            <div class="model" id="id01">
            <div class="register">
                <h1>Register</h1>
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
                <p>Please fill in this form to get Alerts.</p>
                <hr />
                <div class="formregister">

                    <table class="auto-style3">
                        <tr>
                            <td class="autostylejob">Name*</td>
                            <td>Date Of Birth*</td>
                        </tr>
                        <tr>
                            <td class="autostylejob">
                                <asp:TextBox ID="uname" runat="server" TextMode="singleline"></asp:TextBox></td>
                          <td>
                                <asp:DropDownList ID="txtdd" runat="server"></asp:DropDownList>
                              <asp:DropDownList ID="txtmm" runat="server"></asp:DropDownList> 
                              <asp:DropDownList ID="txtyyyy" runat="server"></asp:DropDownList> </td>
                        
                        </tr>
                        <tr>
                            <td class="autostylejob">Email*</td>
                            <td>Mobile Number*</td>
                        </tr>
                        <tr>
                            <td class="autostylejob">
                                <asp:TextBox ID="Emailtxt" runat="server" TextMode="email"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="mobtxt" runat="server" TextMode="phone"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="autostylejob">Qualification*</td>
                            <td>State*</td>
                        </tr>
                        <tr>
                            <td class="autostylejob">
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
                <asp:Button CssClass="registerbtn" ID="Button1" runat="server" Text="Register" />
            </div>
        </div>


            <section class="sec1">
                <div style="width: 100%; height: 250px;">
                    <div class="up">Government Jobs</div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" DataSourceID="jobdata" AllowPaging="True" PageSize="8" PagerStyle-CssClass="page" DataKeyNames="id" CssClass="gridViewText">
                        <AlternatingRowStyle BackColor="Gainsboro" />
                        <Columns>
                            <asp:TemplateField HeaderText="Name" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Govtjoblinkbtn" runat="server" OnClick="Govtjoblinkbtn_Click" Text='<%# Eval("Name") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="200px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Post Name" HeaderText="Post Name" SortExpression="Post Name">
                                <HeaderStyle Width="200px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Adv. No./Date" HeaderText="Adv. No./Date" SortExpression="Adv. No./Date">
                                <HeaderStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age">
                                <HeaderStyle Width="50px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate">
                                <HeaderStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LastDate" HeaderText="LastDate" SortExpression="LastDate">
                                <HeaderStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="View pdf" HeaderText="View pdf" SortExpression="View pdf">
                                <HeaderStyle Width="150px" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="jobdata" runat="server" ConnectionString="<%$ ConnectionStrings:studbellConnectionString4 %>" SelectCommand="SELECT * FROM [GovtJobs] ORDER BY [id] DESC"></asp:SqlDataSource>

                </div>
            </section>

            <section class="sec2">
                <div style="width: 100%; height: 250px;">
                    <div class="up2">Private Jobs</div>
                    <asp:GridView ID="GridView" runat="server" Width="100%" Height="300px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" PageSize="8" AllowCustomPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="gridViewText">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Industy Name" SortExpression="Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Privatelinkbtn" runat="server" OnClick="Privatelinkbtn_click" Text='<%# Eval("Name") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="200px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Post" HeaderText="Posts Name" SortExpression="Post">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="No.ofpost" HeaderText="Number Of Post" SortExpression="No.ofpost">
                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="age" HeaderText="Age Limit" SortExpression="age">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Salery" HeaderText="Salery" SortExpression="Salery">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City">
                                <HeaderStyle HorizontalAlign="Center" Width="150px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Prev" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studbellConnectionString5 %>" SelectCommand="SELECT * FROM [Privatejob] ORDER BY [Id] DESC"></asp:SqlDataSource>

                </div>
            </section>
        </form>
        <footer class="footer1" >
            <div class="down">&#169;2018.StudBell.Com.All Right Reserved.</div>
        </footer>
    </div>


</body>
</html>
