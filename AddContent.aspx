<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddContent.aspx.cs" Inherits="SMS.AddContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 567px;
            height: 374px;
        }
        .auto-style2 {
            width: 282px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;">
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3300" ForeColor="White" Height="34px" OnClick="Button3_Click" Text="Delete This Course" Width="217px" />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                    Add Course Content Videos</td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center">Course ID</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">Video File</td>
                <td style="text-align: center" class="auto-style4">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style7" Width="195px" />
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center">Video ID</td>
                <td style="text-align: center" class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>

            </tr>

            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Height="32px" Width="76px" />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                  
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ViewContent.aspx">view</asp:LinkButton>
                  
                </td>

            </tr>

        </table>
        <table class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;">Update Course Details&nbsp;</td>

    </tr>

    <tr>
        <td class="auto-style2" style="text-align: center">Course ID</td>
        <td style="text-align: center" class="auto-style6">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>

    </tr>
    <tr>
        <td class="auto-style2" style="text-align: center">Course Name</td>
        <td style="text-align: center" class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>

    </tr>

    <tr>
        <td class="auto-style2" style="text-align: center">Duration</td>
        <td style="text-align: center" class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>

    </tr>

    <tr>
        <td class="auto-style2" style="text-align: center">Total Fee</td>
        <td style="text-align: center" class="auto-style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>

    </tr>

    <tr>
        <td class="auto-style2" style="text-align: center">Faculty ID</td>
        <td style="text-align: center" class="auto-style4">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>

    </tr>

    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>

    </tr>

</table>
    </center>
</asp:Content>
