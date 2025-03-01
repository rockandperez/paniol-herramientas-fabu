﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_usuario.aspx.cs" Inherits="Vistas.Login.login_usuario" %>

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
            <div class="table-container">
                <table class="table-container">
                    <tr class="table-row">
                        <td class="table-cell"></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <img alt="logo" src="../css/logo_eest1rp.png" width="150" /></td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <h4>EEST Nº1 Dr. René Favaloro</h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <h4>Roque Pérez - ARG</h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <h4><strong>SISTEMA DE CONTROL DE HERRAMIENTAS</strong></h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <h4>
                                <asp:Label ID="Bienvenido" runat="server" Text="Bienvenido!"></asp:Label></h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                            <asp:TextBox ID="TxtUsuario" runat="server" OnTextChanged="TxtUsuario_TextChanged" placeholder="Ingrese su DNI" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <strong>
                                <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click" />
                            </strong>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
