<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="SMS.adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       /* .auto-style2 {
            width: 100%;
            height: 414px;
        }

        .auto-style3 {
            height: 45px;
        }

        .auto-style4 {
            width: 100%;
            height: 67px;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style2" style="width: 100%">
            <tr>
                <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; text-align: center">Faculty On-Board</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Height="16px" Style="text-align: center" Width="1263px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("UID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="First Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Bind("First_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("First_Name")%>'></asp:TextBox>
                                </EditItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Last Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("Last_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("Last_Name")%>'></asp:TextBox>
                                </EditItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Gender")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("Mobile_No") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("Email_ID") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Years of Experience">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("YearsofExp") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%#Bind("YearsofExp")%>'></asp:TextBox>
                                </EditItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Expertise">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%#Bind("Expertise") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%#Bind("Expertise")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%#Bind("State") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%#Bind("State")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%#Bind("City") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%#Bind("City")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Location">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%#Bind("Location") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%#Bind("Location")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Landmark">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%#Bind("Landmark") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%#Bind("Landmark")%>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PINCODE">
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%#Bind("PINCODE") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%#Bind("PINCODE")%>'></asp:TextBox>
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
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br />
                    <table class="auto-style4" style="width: 100%">
                        <tr>
                            <td style="line-height: normal; vertical-align: middle; text-align: center; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: large; font-weight: 100">Students On Board<br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" Height="16px" ShowFooter="True" ForeColor="Black" GridLines="Vertical" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowCommand="GridView2_RowCommand" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("UID") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="First Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("First_Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("First_Name")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Last Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("Last_Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("Last_Name")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gender">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("Gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Gender")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("Mobile_No") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Email">
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("Email_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="State">
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Bind("State") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%#Bind("State")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="City">
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" runat="server" Text='<%#Bind("City") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox10" runat="server" Text='<%#Bind("City")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Location">
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" runat="server" Text='<%#Bind("Location") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox11" runat="server" Text='<%#Bind("Location")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Landmark">
                                            <ItemTemplate>
                                                <asp:Label ID="Label12" runat="server" Text='<%#Bind("Landmark") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox12" runat="server" Text='<%#Bind("Landmark")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PINCODE">
                                            <ItemTemplate>
                                                <asp:Label ID="Label13" runat="server" Text='<%#Bind("PINCODE") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox13" runat="server" Text='<%#Bind("PINCODE")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                            </FooterTemplate>
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
                                            <FooterTemplate>
                                                <asp:Button ID="Button5" runat="server" Text="Insert" CommandName="insert" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>


</asp:Content>
