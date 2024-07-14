<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventario_de_herramientas.aspx.cs" Inherits="Vistas.Administracion.Inventario_de_herramientas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/x-icon" href="~/css/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/materia/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />

    <title>Control de Herramientas</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="encabezado">
                <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="container">
                <table class="table-container">
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <h4>Inventario de Herramientas</h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <asp:GridView ID="gv_herramientas" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" Width="100%" OnRowEditing="gv_herramientas_RowEditing" OnRowCancelingEdit="gv_herramientas_RowCancelingEdit" OnRowUpdating="gv_herramientas_RowUpdating" OnSelectedIndexChanging="gv_herramientas_SelectedIndexChanging" AllowPaging="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <EditItemTemplate>
                                            <asp:Label ID="lb_eit_idHerramienta" runat="server" Text='<%# bind("id") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_idHerramienta" runat="server" Text='<%# bind("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Herramienta">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txt_eit_herramienta" runat="server" Text='<%# bind("nombre") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_herramienta" runat="server" Text='<%# bind("nombre") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Categoria">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="ddl_eit_cat" runat="server">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_idCat" runat="server" Text='<%# bind("id_cat") %>'></asp:Label>
                                            &nbsp;-
                                    <asp:Label ID="lb_it_cat" runat="server" Text='<%# bind("categoria") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Stock">
                                        <EditItemTemplate>
                                            <asp:Label ID="lb_eit_stock" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_stock" runat="server" Text='<%# bind("stock") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Disponible">
                                        <EditItemTemplate>
                                            <asp:Label ID="lb_eit_disponible" runat="server" Text='<%# bind("disponible") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_disponible" runat="server" Text='<%# bind("disponible") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="En Reparacion">
                                        <EditItemTemplate>
                                            <asp:Label ID="lb_eit_reparacion" runat="server" Text='<%# bind("reparacion") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lb_it_reparacion" runat="server" Text='<%# bind("reparacion") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <asp:Label ID="lb_seleccionado" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="box">
                            <asp:RadioButtonList ID="radList_Stock" runat="server" CellPadding="3" CellSpacing="3">
                                <asp:ListItem Selected="True" Value="1">Aumentar Stock</asp:ListItem>
                                <asp:ListItem Value="0">Reducir Stock</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>

<tr class="table-row">
    <td class="table-cell">
        <asp:TextBox ID="txt_Stock" runat="server" TextMode="Number"></asp:TextBox>
        &nbsp;</td>
</tr>
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfv_Stock" runat="server" ControlToValidate="txt_Stock" ErrorMessage="*ESTE CAMPO DEBE LLENARSE" ValidationGroup="vg_Stock">*ESTE CAMPO DEBE LLENARSE</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <asp:Button ID="btn_aceptar" runat="server" OnClick="btn_aceptar_Click" Text="Aceptar" Width="120px" ValidationGroup="vg_Stock" />
                            <asp:Button ID="btn_cancelar" runat="server" OnClick="btn_cancelar_Click" Text="Cancelar" Width="120px" />
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
