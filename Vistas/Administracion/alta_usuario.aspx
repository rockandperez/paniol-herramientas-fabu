<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta_usuario.aspx.cs" Inherits="Vistas.Administracion.alta_ususario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/x-icon" href="~/css/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/materia/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" type="text/css" />

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
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">&nbsp;</td>
                    <td class="align-left">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">
                        <strong>
                            <asp:Label ID="LbNombre" runat="server" Text="Nombre:"></asp:Label>
                        </strong>
                    </td>
                    <td class="align-left">
                        <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">
                        <strong>
                            <asp:Label ID="LbApellido" runat="server" Text="Apellido:"></asp:Label>
                        </strong>
                    </td>
                    <td class="align-left">
                        <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">
                        <strong>
                            <asp:Label ID="LbUsuario" runat="server" Text="Usuario:"></asp:Label>
                        </strong>
                    </td>
                    <td class="align-left">
                        <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">
                        <strong>
                            <asp:Label ID="LblRol" runat="server" Text="Rol:"></asp:Label>
                        </strong>
                    </td>
                    <td class="align-left">
                        <asp:DropDownList ID="DdlRol" runat="server" Width="120px">
                        </asp:DropDownList>
                    </td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell">&nbsp;</td>
                    <td class="align-right">
                        <strong>
                            <asp:Label ID="LbEstado" runat="server" Text="Estado:"></asp:Label>
                        </strong>
                    </td>
                    <td class="align-left">
                        <asp:DropDownList ID="DdlEstado" runat="server" Width="120px">
                        </asp:DropDownList>
                    </td>
                    <td class="table-cell">&nbsp;</td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell"></td>
                    <td class="table-cell"></td>
                    <td class="table-cell"></td>
                    <td class="table-cell"></td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell"></td>
                    <td class="table-cell" colspan="2"><strong>
                        <asp:Button ID="BtGuardar" runat="server" Text="GUARDAR" />
                        <asp:Button ID="BtCancelar" runat="server" ForeColor="#660033" Text="CANCELAR" />
                    </strong></td>
                    <td class="table-cell"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
