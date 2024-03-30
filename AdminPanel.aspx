<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .adminimg{
            width:300px;
            height:300px;
           
        }

        .content{
            width:600px;
            height:300px;
            background-color:white;
            margin-left:370px;
            margin-top:100px;
         

        }

        .login{
                float:left;
            width:300px;
            height:300px;
             background-color:red;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            color: #FFFFFF;
            text-decoration: underline;
            background-color: #00FF00;
        }
        .down{
            width:100%;
            height:30px;
            padding-top:15px;
            font-family:Arial;
            font-weight:bold;
            text-align:center;
            margin-top:150px;
            background-color:black;
            color:white;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
         <div class="login">
              <img class="adminimg" src="adminlogin.jpg"  /></div>
         <div class="login">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style2"><strong>Login</strong></td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>Admin&nbsp; Id</td>
                 </tr>
                 <tr>
                     <td>
                         <asp:TextBox ID="admintxt" runat="server" Width="159px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>Password</td>
                 </tr>
                 <tr>
                     <td>
                         <asp:TextBox ID="passtxt" runat="server" Width="159px" TextMode="Password"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Button ID="Loginbtn" runat="server" Text="Login" OnClick="Loginbtn_Click" />
                     </td>
                 </tr>
                 <tr>
                     <td> <asp:Label ID="Loginexception" runat="server" ></asp:Label></td>
                 </tr>
             </table>
     </div>        
 </div>   
    <footer>
     <div class="down">&#169;2018.StudBell.Com.All Right Reserved.</div>
        </footer>
</asp:Content>

