<%@ Page Language="C#" AutoEventWireup="true" CodeFile="joblink.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
  .admin {
            width: 90%;
            height:490px;
            background-color: antiquewhite;
            margin-bottom: 10px;
            float:left;
          
        }
        .accordian{
            background-color:orangered;
        }

        .auto-style19 {
            background-color: #00CC00;
        }
        .auto-style20 {
            width: 590px;
        }
        .auto-style22 {
            width: 110px;
            background-color: #00FF00;
        }
        .auto-style24 {
            margin-left: 2px;
        }
        .auto-style25 {
            background-color: #00FF00;
        }
        .auto-style26 {
            width: 247px;
            background-color: #00FF00;
        }
        .auto-style28 {
            width: 108px;
            height: 30px;
            background-color: #00FF00;
        }
        .auto-style29 {
            width: 247px;
            height: 30px;
            background-color: #00FF00;
        }
        .auto-style30 {
            height: 30px;
            background-color: #00FF00;
        }
        .auto-style32 {
            width: 587px;
        }

        .auto-style33 {
            width: 583px;
        }
        .auto-style34 {
            background-color: #00CC00;
            width: 103px;
        }

        .auto-style35 {
            margin-left: 0px;
        }
        .auto-style36 {
            width: 108px;
            background-color: #00FF00;
        }
        .auto-style37 {
            width: 247px;
            background-color: #00FF00;
            text-align: right;
        }
        .auto-style38 {
            width: 247px;
            background-color: #00FF00;
            text-align: left;
        }

        .auto-style39 {
            width: 658px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style39">
  
      
        <div class="admin" id="job">
            <table class="auto-style1">
                <tr>
                    <td>Note: Write The Link Name Same As Webform Name</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <div style="width: 100%">
                                                                 
                                            <div class="accordian">
                                                For Government Job :
                                            </div>
                                            <div class="content">
                                                <table class="auto-style33">
                                                    <tr>
                                                        <td class="auto-style19">Link Name</td>
                                                        <td class="auto-style34">
                                                            <asp:TextBox ID="joblink" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style19">advt.num/date</td>
                                                        <td class="auto-style19">
                                                            <asp:TextBox ID="advertismentnum" runat="server" Width="118px" Height="18px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style19">Post Name</td>
                                                        <td class="auto-style34">
                                                            <asp:TextBox ID="Postname" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style19">Age Limit</td>
                                                        <td class="auto-style19">
                                                            <asp:TextBox ID="agelimit" runat="server" Width="119px" Height="16px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style19">Application Start</td>
                                                        <td class="auto-style34">
                                                            <asp:TextBox ID="start" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style19">Last Date</td>
                                                        <td class="auto-style19">
                                                            <asp:TextBox ID="last" runat="server" Width="120px" Height="16px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="auto-style19">View pdf</td>
                                                        <td class="auto-style34">
                                                             <asp:FileUpload ID="pdffileupload" runat="server" Height="25px" Width="168px" />
                                                        </td>                                                       
                                                         <td class="auto-style19">
                                                            <asp:Button ID="addprivatelink" runat="server" Text="Add"  Width="100px" OnClick="addprivatelink_Click"    />
                                                        </td>
                                                         <td class="auto-style19">
                                                            <asp:Button ID="Selectgjob" runat="server" Text="Select"  Width="100px" OnClick="Selectgjob_Click"   />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                         <td class="auto-style19">Id</td>
                                                        <td class="auto-style34">
                                                            <asp:TextBox ID="JobId" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style19">
                                                            <asp:Button ID="Btndeljob" runat="server" Text="Delete JobLink"  Width="100px" OnClick="Btndeljob_Click"     />
                                                        </td>
                                                         <td class="auto-style19">
                                                            <asp:Button ID="updategjob" runat="server" Text="Update"  Width="100px" OnClick="updategjob_Click"   />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                    
                                     
                                 
                                            <div class="accordian">
                                                For Private Jobs :
                                            </div>
                                    
                                            <div class="content">
                                                <table class="auto-style20">
                                                    <tr>
                                                        <td class="auto-style36">Industry Name</td>
                                                        <td class="auto-style26">
                                                            <asp:TextBox ID="InameTxt" runat="server" Width="135px" CssClass="auto-style24"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style22">Post Name</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="Pnametxt" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style36">Number Of Post</td>
                                                        <td class="auto-style26">
                                                            <asp:TextBox ID="numofposttxt" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style22">Age Limit</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="agelimittxt" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style36">Salary</td>
                                                        <td class="auto-style26">
                                                            <asp:TextBox ID="salerytxt" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style22">City</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="citytxt" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                         <td class="auto-style28">Id</td>
                                                        <td class="auto-style29">
                                                            <asp:TextBox ID="PJId" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        
                                                        
                                                        <td class="auto-style30">
                                                            <asp:Button ID="addgovt" runat="server" Text="Add"  Width="100px" OnClick="addgovt_Click"  />
                                                        </td>
                                                         <td class="auto-style38">
                                                            <asp:Button ID="UPDatePJ0" runat="server" Text="Select"  Width="100px" CssClass="auto-style35" OnClick="UPDatePJ0_Click"   />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style36">
                                                            <asp:Button ID="DelPJ" runat="server" Text="Delete JobLink"  Width="100px" OnClick="DelPJ_Click"     />
                                                        </td>
                                                         <td class="auto-style37">
                                                            <asp:Button ID="UPDatePJ" runat="server" Text="Update"  Width="100px" CssClass="auto-style35" OnClick="UPDatePJ_Click"   />
                                                        </td>
                                                    </tr>
                                                     
                                                </table>
                                            </div>
                                   
                               
                                            <div class="accordian">
                                                For Part Time Jobs :
                                            </div>
                                               <div class="content">
                                                <table class="auto-style32">
                                                    <tr>
                                                        <td class="auto-style25">Link Name</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox43" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style25">Post Date</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox44" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style25">Post Name</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox45" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style25">Age Limit</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox46" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style25">Application Begain</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox47" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style25">Last Date for Apply</td>
                                                        <td class="auto-style25">
                                                            <asp:TextBox ID="TextBox48" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2" colspan="4">
                                                            <asp:Button ID="addparttime" runat="server" Text="Add"  Width="100px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                   
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Lblreult" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
