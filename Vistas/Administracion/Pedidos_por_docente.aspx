<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos_por_docente.aspx.cs" Inherits="Vistas.Administracion.Pedidos_por_docente" %>

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
            <div class="table-row">
                <table class="table-container">
                    <tr class="table-row">
                        <td class="table-cell" colspan="3">
                            <h4>
                                <asp:Label ID="lblReporte" runat="server" Text="Reporte de solicitudes por docente"></asp:Label></h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Label ID="lblDocente" runat="server" Text="Docente"></asp:Label>
                            <asp:DropDownList ID="ddlDocente" runat="server" OnSelectedIndexChanged="ddlDocente_SelectedIndexChanged">
                                <asp:ListItem>Seleccione docente</asp:ListItem>
                                <asp:ListItem>Rosa Ojeda</asp:ListItem>
                                <asp:ListItem>Facundo Luna</asp:ListItem>
                                <asp:ListItem>Jorge Mancinelli</asp:ListItem>
                                <asp:ListItem>Daniel Gomez</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                            <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">Ingrese fecha desde(dd/mm/aa)
                        <asp:TextBox ID="txtDesde" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="rgvDesde" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtDesde"></asp:RegularExpressionValidator>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">Ingrese fecha hasta (dd/mm/aa)
                        <asp:TextBox ID="txtHasta" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="rgvHasta" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtHasta"></asp:RegularExpressionValidator>
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">*la fecha no puede ser mayor a fecha hasta</td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" />
                        </td>
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                        <td class="table-cell">
                            <asp:GridView ID="gvConsulta0" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Herramienta"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Fecha"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hora entrega"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hora devolucion"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cantidad"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="A reparar"></asp:TemplateField>
                                </Columns>
                            </asp:GridView>
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
