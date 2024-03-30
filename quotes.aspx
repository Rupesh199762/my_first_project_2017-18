<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quotes.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
     .Qute{
           
            width:90%;
            height: 420px;
            background-color: antiquewhite;
            margin-left:30px;
            margin-bottom: 10px;
            float:left;
        }
</style>
</head>
<body>
  <form id="form1" runat="server">
       <div class="Qute" id="quotes" >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2"><strong><em><span class="auto-style15">Add Quotes</span></em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                  
                        Quote 1:</td>
                    <td>
                  
                        <asp:TextBox ID="quote1" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 1:</td>
                    <td>
                  
                        <asp:TextBox ID="writer1" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Quote 2:</td>
                    <td>
                  
                        <asp:TextBox ID="quote2" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 2</td>
                    <td>
                  
                        <asp:TextBox ID="writer2" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Quote 3:</td>
                    <td>
                  
                        <asp:TextBox ID="quote3" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 3:</td>
                    <td>
                  
                        <asp:TextBox ID="writer3" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Quote 4:</td>
                    <td>
                  
                        <asp:TextBox ID="quote4" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 4:</td>
                    <td>
                  
                        <asp:TextBox ID="writer4" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Quote 5:</td>
                    <td>
                  
                        <asp:TextBox ID="quote5" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 5:</td>
                    <td>
                  
                        <asp:TextBox ID="writer5" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Quote 6:</td>
                    <td>
                  
                        <asp:TextBox ID="quote6" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style12">
                  
                        Writer 6:</td>
                    <td>
                  
                        <asp:TextBox ID="writer6" runat="server" Height="16px" Width="479px"></asp:TextBox>
                  
                    </td>
               </tr>
                
                <tr>
                    <td class="auto-style13">
                  
                        </td>
                    <td class="auto-style14">
                  
                        <asp:Button ID="QuoteUpdate" runat="server" Text="Update" OnClick="QuoteUpdate_Click"  />
                    </td>
               </tr>
                
                <tr>
                    <td colspan="2">
                  
                        <asp:Label ID="Qerror" runat="server"></asp:Label>
                    </td>
               </tr>
                
             </table>
                       
        </div>
   
     
        </form>
</body>
</html>
