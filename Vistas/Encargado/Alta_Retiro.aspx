<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Retiro.aspx.cs" Inherits="Vistas.Encargado.WebForm1" %>

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
    <form id="form2" runat="server">
        <div class="container">
            <div class="encabezado">
                <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="container">
                <table class="table-container">
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <h4>Retiro de Herramientas</h4>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Label ID="lblProfesor" runat="server" Text="Profesor:"></asp:Label>
                            &nbsp;<asp:DropDownList ID="ddlProfesores" runat="server" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Label ID="lblHerramienta" runat="server" Text="Herramienta"></asp:Label>
                            &nbsp;<asp:DropDownList ID="ddlHerramientas" runat="server" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" />
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Fecha">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Id Herramienta">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombre Herramienta">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cant. Retiradas">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hora Retiro">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Profesor">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:Label ID="lblCantidad" runat="server" Text="Cantidad:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            &nbsp;</td>
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
