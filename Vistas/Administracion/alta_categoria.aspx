<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta_categoria.aspx.cs" Inherits="Vistas.Administracion.alta_categoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/x-icon" href="~/css/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/materia/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />

    <title>Control de Herramientas - Categorías</title>

</head>
<body>
    <div class="container">
        <div class="encabezado">
            <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
        </div>
        <form id="form1" runat="server">
            <table class="table-container">
                <tr class="table-row">
                    <td class="table-cell"></td>
                    <td class="table-cell">
                        <h4>Herramientas - Categorías</h4>
                    </td>
                    <td class="table-cell"></td>
                </tr>
                <tr class="table-row">
                    <td class="table-cell"></td>
                    <td class="table-cell"><strong>Ingrese Nueva Categoria:</strong><asp:TextBox ID="TxtNueva" runat="server" Width="220px"></asp:TextBox>
                        <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar" />
                    </td>
                    <td class="table-cell"></td>
                </tr>
                <tr>
                    <td class="table-cell"></td>
                    <td class="table-cell"></td>
                    <td class="table-cell"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
