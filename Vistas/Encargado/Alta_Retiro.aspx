<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Retiro.aspx.cs" Inherits="Vistas.Encargado.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body>
    <form id="form2" runat="server">
        <div>
        <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
        </div>
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style30" colspan="6"></td>
                <td class="auto-style35" colspan="4">
                    <asp:CustomValidator ID="cv_Profesores" runat="server" ControlToValidate="ddlProfesores" ErrorMessage="*SELECCIONE UN PROFESOR" ValidationGroup="vg_CrearRetiro"></asp:CustomValidator>
                </td>
                <td class="auto-style30" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style52" colspan="6"></td>
                <td class="auto-style52">
                    <asp:Label ID="lblProfesor" runat="server" Text="Profesor:"></asp:Label>
                </td>
                <td class="auto-style48" colspan="2">
                    <asp:DropDownList ID="ddlProfesores" runat="server" Height="16px" Width="160px" ValidationGroup="vg_CrearRetiro">
                    </asp:DropDownList>
                </td>
                <td class="auto-style52" colspan="3">
                </td>
            </tr>
            <tr>
                <td class="auto-style51" colspan="4">&nbsp;</td>
                <td colspan="4">
                    <asp:GridView ID="gv_herramientas" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateSelectButton="True" Width="733px" OnSelectedIndexChanging="gv_herramientas_SelectedIndexChanging" AllowPaging="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_idHerramienta" runat="server" Text='<%# bind("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Herramienta">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_herramienta" runat="server" Text='<%# bind("nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Categoria">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_idCat" runat="server" Text='<%# bind("id_cat") %>'></asp:Label>
                                    &nbsp;-
                                    <asp:Label ID="lb_it_cat" runat="server" Text='<%# bind("categoria") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_stock" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Disponible">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_disponible" runat="server" Text='<%# bind("disponible") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="En Reparacion">
                                <ItemTemplate>
                                    <asp:Label ID="lb_it_reparacion" runat="server" Text='<%# bind("reparacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style50">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style43" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style36" colspan="4">&nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style31"></td>
                <td class="auto-style33"></td>
                <td class="auto-style42" colspan="2"></td>
                <td class="auto-style30"></td>
                <td class="auto-style35" colspan="4"></td>
                <td class="auto-style37"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style50">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style43" colspan="2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style36" colspan="4">
                    &nbsp;</td>
                <td class="auto-style38">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style50">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style43" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style36" colspan="4">
                    &nbsp;</td>
                <td class="auto-style38">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table align="center" class="auto-style41">
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    <asp:GridView ID="gv_retiros" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateDeleteButton="True" OnRowDeleting="gv_retiros_RowDeleting">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Retirados">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_it_CantidadRetirado" runat="server" TextMode="Number" ValidationGroup="vg_CrearRetiro"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:Button ID="btn_Alta" runat="server" OnClick="btn_Alta_Click" Text="Alta" Visible="False" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
