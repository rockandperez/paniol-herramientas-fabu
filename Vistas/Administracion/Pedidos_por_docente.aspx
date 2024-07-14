<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos_por_docente.aspx.cs" Inherits="Vistas.Administracion.Pedidos_por_docente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/x-icon" href="~/css/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/materia/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />

    <title>Control de Herramientas - Pedidos</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="encabezado">
                <asp:Label ID="encabezado" runat="server" Text="(encabezado)"></asp:Label>
            </div>
            <div class="container">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Label ID="lblReporte" runat="server" Text="Reporte de solicitudes por docente"></asp:Label>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style35">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style16">
                            <asp:Label ID="lblDocente" runat="server" Text="Docente"></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:DropDownList ID="ddlDocente" runat="server">
                                <asp:ListItem>Seleccione docente</asp:ListItem>
                                <asp:ListItem>Rosa Ojeda</asp:ListItem>
                                <asp:ListItem>Facundo Luna</asp:ListItem>
                                <asp:ListItem>Jorge Mancinelli</asp:ListItem>
                                <asp:ListItem>Daniel Gomez</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style15"></td>
                        <td class="auto-style18">Ingrese fecha desde(dd/mm/aa)</td>
                        <td class="auto-style36">
                            <asp:TextBox ID="txtDesde" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:RegularExpressionValidator ID="rgvDesde" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtDesde"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style15"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style4">Ingrese fecha hasta (dd/mm/aa)</td>
                        <td class="auto-style35">
                            <asp:TextBox ID="txtHasta" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="rgvHasta" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtHasta"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style10"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style8">*la fecha no puede ser mayor a fecha hasta</td>
                        <td class="auto-style37"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style12"></td>
                        <td class="auto-style13"></td>
                        <td class="auto-style11"></td>
                        <td class="auto-style14"></td>
                        <td class="auto-style38"></td>
                        <td class="auto-style11"></td>
                        <td class="auto-style11"></td>
                    </tr>
                    <tr>
                        <td class="auto-style31"></td>
                        <td class="auto-style32"></td>
                        <td class="auto-style33"></td>
                        <td class="auto-style31"></td>
                        <td class="auto-style34">
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" />
                        </td>
                        <td class="auto-style39"></td>
                        <td class="auto-style31"></td>
                        <td class="auto-style31"></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"></td>
                        <td class="auto-style24"></td>
                        <td class="auto-style25"></td>
                        <td class="auto-style23"></td>
                        <td class="auto-style26">
                            <asp:GridView ID="gvConsulta" runat="server" AutoGenerateColumns="False">
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
                        <td class="auto-style40"></td>
                        <td class="auto-style23"></td>
                        <td class="auto-style23"></td>
                    </tr>
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style28"></td>
                        <td class="auto-style29"></td>
                        <td class="auto-style27"></td>
                        <td class="auto-style30">
                            <asp:Button ID="btnVolver" runat="server" Text="Volver" />
                        </td>
                        <td class="auto-style41">&nbsp;</td>
                        <td class="auto-style27"></td>
                        <td class="auto-style27"></td>
                    </tr>
                </table>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
