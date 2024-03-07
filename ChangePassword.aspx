<%@ Page Title="" Language="C#" MasterPageFile="~/loginStudent.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="SMS.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 535px;
            height: 243px;
        }
        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            width: 258px;
            height: 79px;
        }
        .auto-style4 {
            height: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
     <table class="auto-style1">
            <tr>
                <td colspan ="2" style="text-align: center; font-size: large; font-weight: bold;">
                     Enter Details</td>

            </tr>

         <tr>
             <td class="auto-style2" style="text-align: center">
                 <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
             &nbsp;/ Mobile</td>
             <td style="text-align: center">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>

         </tr>
         <tr>
             <td class="auto-style3" style="text-align: center">
                 <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
             </td>
             <td style="text-align: center" class="auto-style4">
                 <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
             </td>

         </tr>
      
         <tr>
             <td colspan="2" style="text-align: center">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Height="32px" Width="76px" />
                 <asp:Label ID="Label3" runat="server"></asp:Label>
             </td>

         </tr>
         
     </table>
 </center>
</asp:Content>
