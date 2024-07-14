<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categorias.aspx.cs" Inherits="Vistas.Administracion.categorias" %>

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
    <form id="form1" runat="server">
        <div class="container">
            <div class="encabezado">
                <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="table-container">
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
                        <td class="table-cell"></td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">Filtrar:
                            <asp:TextBox ID="TXTCategoria" runat="server"></asp:TextBox>
                            <asp:Button ID="BtBuscar" runat="server" OnClick="BtBuscar_Click" Text="Buscar" />
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:GridView ID="GridCategorias" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" CellPadding="3" CellSpacing="2" HorizontalAlign="Center" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Lb_it_IdCateg" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="categoria">
                                        <ItemTemplate>
                                            <asp:Label ID="LbCategoria" runat="server" Text='<%# Bind("categoria") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Button ID="BTNNueva" runat="server" OnClick="BTNNueva_Click" Text="NUEVA" />
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell"></td>
                        <td class="table-cell"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
