<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Vistas.Administracion.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/x-icon" href="~/css/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/materia/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />

    <title>Control de Herramientas - Usuarios</title>

</head>
<body>
    <div class="container">
        <div class="encabezado">
            <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
        </div>

        <form id="form1" runat="server">
            <table class="table-container">
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:CheckBox ID="cb_filtrar" runat="server" AutoPostBack="True" OnCheckedChanged="cb_filtrar_CheckedChanged" Text="Filtrar" />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">Estado<asp:DropDownList ID="ddl_filtro_estado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_filtro_estado_SelectedIndexChanged" Width="100px">
                            <asp:ListItem Value="1">Activo</asp:ListItem>
                            <asp:ListItem Value="0">Inactivo</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">Rol<asp:DropDownList ID="ddl_filtro_rol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_filtro_rol_SelectedIndexChanged" Width="120px">
                        </asp:DropDownList>
                    &nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">Nombre y apellido<asp:TextBox ID="txt_filtro_nombre" runat="server" Width="220px" OnTextChanged="txt_filtro_nombre_TextChanged"></asp:TextBox>
                        <asp:Button ID="btn_filtro_nomape" runat="server" OnClick="btn_filtro_nomape_Click" Text="Aplicar" Visible="True" />
                        </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:GridView ID="gv_usuarios" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="gv_usuarios_RowCancelingEdit" OnRowDeleting="gv_libros_RowDeleting" OnRowEditing="gv_usuarios_RowEditing" OnRowUpdated="gv_usuarios_RowUpdated" OnRowUpdating="gv_usuarios_RowUpdating" UseAccessibleHeader="False" AllowPaging="True" OnPageIndexChanging="gv_usuarios_PageIndexChanging" PageSize="5" OnSelectedIndexChanged="gv_usuarios_SelectedIndexChanged" CssClass="align-center" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="ID" ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_et_id" runat="server" Text='<%# Bind("usuario") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_id" runat="server" Text='<%# Bind("usuario") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="tb_et_nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="tb_et_apellido" runat="server" Text='<%# Bind("apellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_apellido" runat="server" Text='<%# Bind("apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Rol">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddl_et_rol" runat="server">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_rolId" runat="server" Text='<%# Bind("rol_id") %>'></asp:Label>
                                        &nbsp;-
                            <asp:Label ID="lbl_it_rol" runat="server" Text='<%# Bind("rol") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddl_et_estado" runat="server">
                                            <asp:ListItem Value="False">Inactivo</asp:ListItem>
                                            <asp:ListItem Value="True">Activo</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_estado" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="blanquear" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_blanqueo" runat="server" BackColor="#FFCC99" BorderStyle="None" CommandArgument='<%# Eval("usuario") %>' CommandName="eventoBlanquear" OnCommand="btn_blanqueo_Command" OnClientClick="return alerta_blanqueo('Seguro que desea blanquear la password?')" Text="Blanquear Pass" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:Button ID="BtNuevo" runat="server" OnClick="BtNuevo_Click" Text="NUEVO" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        function alerta_blanqueo(texto) {
            var resultado = confirm(texto)
            return resultado
        }
    </script>
</body>
</html>
