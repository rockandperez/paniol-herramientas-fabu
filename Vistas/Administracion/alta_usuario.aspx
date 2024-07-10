<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categorias.aspx.cs" Inherits="Vistas.Administracion.categorias" %>

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
                <asp:Label ID="Label1" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="table-container">
                <table class="table-container">
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><h4>Nuevo Usuario</h4></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">&nbsp;</td>
                        <td class="table-cell">&nbsp;</td>
                        <td class="table-cell">&nbsp;</td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Label ID="LbNombre" runat="server" Text="Nombre:"></asp:Label>&nbsp;<asp:TextBox ID="TxtNombre" runat="server" Width="200px"></asp:TextBox>
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Label ID="LbApellido" runat="server" Text="Apellido:"></asp:Label>&nbsp;<asp:TextBox ID="TxtApellido" runat="server"  Width="200px"></asp:TextBox>
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Label ID="LbUsuario" runat="server" Text="Usuario:"></asp:Label>&nbsp;<asp:TextBox ID="TxtUsuario" runat="server"  Width="200px"></asp:TextBox>
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Label ID="LblRol" runat="server" Text="Rol:"></asp:Label>&nbsp;<asp:DropDownList ID="DdlRol" runat="server" Height="21px">
                        </asp:DropDownList>
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Label ID="LbEstado" runat="server" Text="Estado:"></asp:Label>&nbsp;<asp:DropDownList ID="DdlEstado" runat="server">
                        </asp:DropDownList>
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"><strong>
                        <asp:Button ID="BtGuardar" runat="server" Text="GUARDAR" />
                        &nbsp;<asp:Button ID="BtCancelar" runat="server" ForeColor="#660033" Text="CANCELAR" />
                        </strong></td>
                        <td class="table-cell"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
