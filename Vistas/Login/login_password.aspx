<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_password.aspx.cs" Inherits="Vistas.Login.login_password" %>

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
                            <h4>EEST Nº1&nbsp; Dr. René Favaloro</h4>
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
                                <asp:Label ID="lblMsgUsuario" runat="server" EnableTheming="True"></asp:Label></h4>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <asp:Label ID="lblContraseña0" runat="server" Text="Contraseña:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtPass" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <asp:Label ID="lvlRepetirContraseña" runat="server" Text="Repetir Contraseña:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtRepeatPass" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
                            &nbsp;<asp:CompareValidator ID="vld_compare" runat="server" ControlToCompare="txtPass" ControlToValidate="txtRepeatPass" ErrorMessage="Las contarseñas no coinciden" ValidationGroup="vld_grupo"></asp:CompareValidator>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRepeatPass" ErrorMessage="La contraseña no puede estar en blanco" ValidationGroup="vld_grupo"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="table-row">
                        <td class="table-cell">
                            <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" OnClick="Button1_Click1" ValidationGroup="vld_grupo" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
