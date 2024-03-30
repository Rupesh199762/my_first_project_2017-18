<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admitlinks.aspx.cs" Inherits="Admitlinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FF9900;
        }
        .auto-style2 {
            background-color: #00FF00;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="admin1" id="admitID">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong><em>Add Admi<span class="auto-style2">t Card L</span>ink</em></strong></td>
                </tr>
                <tr>
                    <td>Note: Write The Link Name Same As Webform Name</td>
                </tr>
                <tr>
                    <td>AdmitCard:<asp:Label ID="Showacl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 100%">
                                                                 
                                           
                                            <div class="content">
                                                <table>
                                                     <tr>
                                                        <td class="auto-style4">ID</td>
                                                        <td class="auto-style11" colspan="2">
                                                            <asp:TextBox ID="txtAdmitCardID" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td colspan="2">Admit Card Link</td>
                                                        <td>
                                                            <asp:TextBox ID="txtAdmitCardLink" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style4">Institute Name </td>
                                                        <td colspan="2">
                                                            <asp:TextBox ID="txtInstitueName" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td colspan="2">Status</td>
                                                        <td>
                                                            <asp:TextBox ID="txtAdmitCardStatus" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="auto-style16">
                                                            <asp:Button ID="addAdmitCardBtn" runat="server" Text="Add" OnClick="addAdmitCardBtn_Click" />
                                                        </td>
                                                        <td colspan="2" class="auto-style17">
                                                              <asp:Button ID="deleteAdmitCardBtn" runat="server" Text="Delete" OnClick="deleteAdmitCardBtn_Click" />
                                                        </td>
                                                        <td colspan ="2" class =" auto-style3">
                                                              <asp:Button ID="selectAdmitCardBtn" runat="server" Text="Select" OnClick="selectAdmitCardBtn_Click"/>                                                            
                                                        </td>
                                                        <td class="auto-style3">
                                                              <asp:Button ID="modifyAdmitCardBtn" runat="server" Text="Modify" OnClick="modifyAdmitCardBtn_Click" />    
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                            </div>
                        </td>
                        </tr>
                

                </table></div>
    </form>
</body>
</html>
