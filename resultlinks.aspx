<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resultlinks.aspx.cs" Inherits="admintlink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #009900;
        }

        .auto-style2 {
            background-color: #CC00FF;
        }

        .auto-style3 {
            width: 121px;
        }

        .auto-style4 {
            width: 268435488px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin1" id="resultID">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong><em>Add Results Link</em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">Note: Write The Link Name Same As Webform Name</td>
                </tr>
                <tr>
                    <td class="auto-style1">Add Result:<asp:Label ID="Showrl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <div style="width: 100%">
                            <div class="content">
                                <table>
                                    <tr>
                                        <td class="auto-style3">ID</td>
                                        <td class="auto-style11" colspan="2">
                                            <asp:TextBox ID="txtResultId" runat="server" Width="135px"></asp:TextBox>
                                        </td>
                                        <td colspan="2" class="auto-style4">Result Link</td>
                                        <td>
                                            <asp:TextBox ID="txtResultLink" runat="server" Width="135px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Institute Name </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtInstituteName" runat="server" Width="135px"></asp:TextBox>
                                        </td>
                                        <td colspan="2" class="auto-style4">Status</td>
                                        <td>
                                            <asp:TextBox ID="txtResultStatus" runat="server" Width="135px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="auto-style16">
                                            <asp:Button ID="addResultBtn" runat="server" Text="Add" OnClick="addResultBtn_Click" />
                                        </td>
                                        <td class="auto-style17">
                                            <asp:Button ID="deleteResultBtn" runat="server" Text="Delete" OnClick="deleteResultBtn_Click" />
                                        </td>
                                        <td class="auto-style17">
                                            <asp:Button ID="SelectResultBtn" runat="server" Text="Select" OnClick="SelectResultBtn_Click"  />
                                        </td>
                                        <td colspan="2" class="auto-style5">
                                            <asp:Button ID="modifyResultBtn" runat="server" Text="Modify" OnClick="modifyResultBtn_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
