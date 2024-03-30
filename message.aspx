<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .message_box {
            width: 400px;
            height:500px;
            background-color: pink;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
            background-color: #FF9933;
        }

        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            text-align: left;
            color: #FFFFFF;
            background-color: #0000FF;
        }

        #Sendmessage {
            color: white;
            background-color: green;
            border: 2px solid white;
        }

            #Sendmessage:hover {
                opacity:.7;
            }
          
        .auto-style6 {
            background-color: #0000FF;
        }
          
        .auto-style7 {
            width: 213px;
        }
          
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message_box">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">Message Box</td>
                </tr>
                <tr>
                    <td class="auto-style7">Qualifaication</td>
                    <td class="auto-style4">
                         <asp:DropDownList ID="dplqualification" runat="server" Height="30px" Width="147px" >
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
                                </asp:DropDownList></td>
                    <td>
                        <asp:Button ID="Qualification" runat="server" Text="Load"   />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">-----------------------------------------------------------------<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-50F4FP9\SQLEXPRESS;Initial Catalog=studbell;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Master_Register] WHERE ([qualification] = @qualification)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dplqualification" Name="qualification" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource></td>
                </tr>
                <tr>
                    <td colspan="3">
                    
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email_id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="388px">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        
                        <ItemTemplate>
                           <asp:CheckBox ID="chk" runat="server" OnCheckedChanged="GetSelectedRecord" AutoPostBack="true" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Numbers" SortExpression="number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("number") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("number") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerSettings Mode="NextPrevious" NextPageText="More" PreviousPageText="less" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            
                  
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3"><strong>Mobile Numbers</strong></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="numberstxt" runat="server" Height="17px" Width="379px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style6">
                        <strong><span class="auto-style6">Message</span> Body:</strong></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="bodymessage" runat="server" Height="57px" TextMode="MultiLine" Width="383px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Sendmessage" runat="server" Height="40px" Text="Send" Width="98%" OnClick="Sendmessage_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="response" runat="server" ></asp:Label>
            <br />
            
        </div>
    </form>
</body>
</html>
