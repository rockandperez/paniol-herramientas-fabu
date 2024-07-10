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
                <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <table class="table-container">
                <tr class="table-row">
                    <td class="table-cell"></td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por profesor"></asp:Label>
                        <asp:CheckBox ID="cbFiltrar" runat="server" />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:Label ID="lbProfesor" runat="server" Text="Profesor:"></asp:Label>
                        <asp:DropDownList ID="ddlProfesor" runat="server" CssClass="auto-style2"></asp:DropDownList>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:GridView ID="gvHerramientas_uso" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" OnSelectedIndexChanged="gvHerramientas_uso_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="cantidad_retirada" HeaderText="Cantidad retirada" />
                                <asp:BoundField DataField="profesor" HeaderText="Profesor" />
                                <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                                <asp:BoundField DataField="hora_retiro" HeaderText="Hora de retiro" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:Button ID="btnTodos" runat="server" Text="Seleccionar todos" OnClick="btnTodos_Click" />
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:ListBox ID="listboxSeleccionados" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">
                        <asp:Button ID="btnDevolver" runat="server" Text="Devolver" OnClick="btnDevolver_Click" />
                        &nbsp;<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                        &nbsp;<asp:Button ID="btnVolver" runat="server" Text="Volver" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
