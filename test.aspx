<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style4 {
            width: 396px;
        }
        .model1 {
    display:block;
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
       </style>
    <link href="Register.css" rel="stylesheet" />
    <script>
        var modal1 = document.getElementById('id01');

        window.open = function (event) {
            if (event.target == modal1) {
                modal.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <button onclick="document.getElementById('id01').style.display='block'" class="regbutton">Register with us</button>
   <form id="form01" runat="server">
     <div class="model1" id="id01">
            <div class="register">

                <h1>Register</h1>
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
                <p>Please fill in this form to get Alerts.</p>
                <hr />
                <div class="formregister">

                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style4">Name*</td>
                            <td>Date Of Birth*</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="uname" runat="server" TextMode="singleline"></asp:TextBox></td>
                          <td>
                              <asp:DropDownList ID="txtdd" runat="server"></asp:DropDownList>
                              <asp:DropDownList ID="txtmm" runat="server"></asp:DropDownList> 
                              <asp:DropDownList ID="txtyyyy" runat="server"></asp:DropDownList> 
                              </td>                       
                        </tr>
                        <tr>
                            <td class="auto-style4">Email*</td>
                            <td>Mobile Number*</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="Emailtxt" runat="server" TextMode="email"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="mobtxt" runat="server" TextMode="phone"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Qualification*</td>
                            <td>State*</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
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
                <asp:Button class="registerbtn" ID="Button1" runat="server" Text="Register" />
            </div>
        </div>


    </form>

</body>
</html>
