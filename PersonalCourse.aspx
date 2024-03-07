<%@ Page Title="" Language="C#" MasterPageFile="~/loginStudent.Master" AutoEventWireup="true" CodeBehind="PersonalCourse.aspx.cs" Inherits="SMS.PersonalCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 249px;
        }

        .auto-style3 {
            height: 82px;
        }

        .auto-style4 {
            width: 100%;
            height: 249px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: medium; font-weight: 100">Course Content<br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Ask A Query" Width="153px" />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="False" OnClick="Button2_Click" Text="Submit" Visible="False" Width="105px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <div id="videoContainer" runat="server">
        <div class="horizontal">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div id="videoContainer" runat="server">

                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("Video_link") %>'></asp:Literal></td>
                            </tr>
                        </table>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <table class="auto-style4">
        <tr>
            <td class="auto-style3" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: medium; font-weight: 100">Your Queries<br />
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="106px" Width="581px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="Query ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Query_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Your Query">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Bind("Query") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("Query")%>'></asp:TextBox>
                </EditItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Response">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("Response") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("Response")%>'></asp:TextBox>
                </EditItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Edit" CommandName="Edit" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure to remove this record?')" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Update" CommandName="Update" />
                    <asp:Button ID="Button3" runat="server" Text="Cancel" CommandName="Cancel" />
                </EditItemTemplate>

            </asp:TemplateField>
        </Columns>
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

</asp:Content>
