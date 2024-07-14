<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Devoluciones.aspx.cs" Inherits="Vistas.Encargado.Devoluciones" %>

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
                <asp:Label ID="Label2" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="table-container>">

                <table class="table-container">
                    <tr class="table-row">
                        <td>
                            <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por profesor"></asp:Label>
                            <asp:CheckBox ID="cbFiltrar" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbProfesor" runat="server" Text="Profesor:"></asp:Label>
                            <asp:DropDownList ID="ddlProfesor" runat="server" CssClass="auto-style2"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gvHerramientas_uso" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" OnSelectedIndexChanged="gvHerramientas_uso_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_ID" runat="server" Text='<%# bind("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombre">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_Nombre" runat="server" Text='<%# bind("nombre") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cantidad Retirada">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_CantRetirada" runat="server" Text='<%# bind("cantidad_retirada") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Profesor">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_Profesor" runat="server" Text='<%# bind("id_profesor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Fecha">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_Fecha" runat="server" Text='<%# bind("fecha") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hora Retiro">
                                        <ItemTemplate>
                                            <asp:Label ID="lb_horaRetiro" runat="server" Text='<%# bind("hora_retiro") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnTodos" runat="server" Text="Seleccionar todos" OnClick="btnTodos_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ListBox ID="listboxSeleccionados" runat="server"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="btnDevolver" runat="server" Text="Devolver" OnClick="btnDevolver_Click" />
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                            <asp:Button ID="btnVolver" runat="server" Text="Volver" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
