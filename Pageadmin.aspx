<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="Pageadmin.aspx.cs" Inherits="Pageadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="adminpanel.css" />
    <style>

          .admin1{
               width: 100%;
            height:200px;
            background-color: antiquewhite;
            margin-top:50px;
            margin-left:50px;
            margin-bottom: 10px;
            float:left;
            display:none;
          }
      
         .down{
            width:100%;
            height:40px;
            padding-top:10px;
            font-family:Arial;
            font-weight:bold;
            text-align:center;
            margin-top:550px;
            background-color:black;
            color:white;

        }

.vertical-menu {
    width: 200px;
    float:left;
    margin-left:10px;
}

.vertical-menu a {
    background-color: #eee;
    color: black;
    display: block;
    padding: 12px;
    text-decoration: none;
    text-align:center;
}

.vertical-menu a:hover {
    background-color: #ccc;
}

.vertical-menu a.active {
    background-color: #4CAF50;
    color: white;
}


        .homelink{
            width:320px;
            height:560px;
            margin-left:60px;
            float:left;
          
            background-repeat:no-repeat;
            background-size:cover;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="vertical-menu">
  <a class="active">WELCOME</a>
  <a href="joblink.aspx" target="iframe_a">AddJobLink</a>
  <a href="Admitlinks.aspx" target="iframe_a">AddAdmitcardLink</a>
  <a href="resultlinks.aspx" target="iframe_a">AddResultLink</a>
  <a href="quotes.aspx" target="iframe_a")">AddQuotes</a>
  <a href="message.aspx" target="iframe_a")">Send Message</a>
  <asp:Button ID="logoutbtn" runat="server" Text="LogOut" Width="200px" Height="40px" BorderStyle="None" background-color=" #eee" pointer="cursor" OnClick="logoutbtn_Click"/>
</div>
            <iframe  style="height:520px; width:50%; float:left; margin-left:70px; margin-top:5px; border:none;"  name="iframe_a"></iframe>

  <img src="tree.png" class="homelink"/>
      <footer>
            <div class="down">&#169;2018.StudBell.Com.All Right Reserved.</div>
        </footer>
</asp:Content>

