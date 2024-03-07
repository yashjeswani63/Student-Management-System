<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="AddContent2.aspx.cs" Inherits="SMS.AddContent2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 567px;
        height: 374px;
    }
    .auto-style2 {
        width: 282px;
    }
        .auto-style3 {
            height: 64px;
        }
        .auto-style4 {
            width: 282px;
            height: 128px;
        }
        .auto-style5 {
            width: 282px;
            height: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;" class="auto-style3">
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
        <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;" class="auto-style3">
            <br />
            Queries Related to This Course</td>

    </tr>

    <tr>
        <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;" class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="382px">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
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
        <td class="auto-style2" style="text-align: center">Course ID</td>
        <td style="text-align: center" class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>

    </tr>
    <tr>
        <td class="auto-style5" style="text-align: center">Answer</td>
        <td style="text-align: center" class="auto-style5">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>

    </tr>

    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>

    </tr>
    
</table>
    </center>
</asp:Content>
