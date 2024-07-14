<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Usuario.aspx.cs" Inherits="Paniol_Herramientas.Login_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style5 {
            width: 118px;
        }
        .auto-style6 {
            height: 26px;
            width: 118px;
        }
        .auto-style7 {
            color: #336699;
            font-size: x-large;
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
            color: #336699;
        }
        .auto-style13 {
            text-align: center;
            height: 36px;
        }
        .auto-style14 {
            height: 36px;
        }
        .auto-style18 {
            height: 20px;
            width: 205px;
        }
        .auto-style19 {
            height: 20px;
        }
        .auto-style20 {
            height: 51px;
        }
        .auto-style22 {
            height: 51px;
            width: 118px;
        }
        .auto-style24 {
            width: 205px;
        }
        .auto-style25 {
            height: 51px;
            width: 205px;
        }
        .auto-style26 {
            height: 26px;
            width: 205px;
        }
        .auto-style27 {
            height: 26px;
            width: 205px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        </div>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="187px" ImageUrl="~/Imagenes/Logo.png" Width="140px" />
                </td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7" colspan="3"><strong>EEST Nº1&nbsp; Dr. René Favaloro</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12" colspan="3"><strong>Roque Pérez - ARG</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style13" colspan="3" style="border-color: #000000; padding: inherit; margin: inherit; border-style: double;">SISTEMA DE CONTROL DE HERRAMIENTAS</td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style25"></td>
                <td class="auto-style22"></td>
                <td class="auto-style25"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19" colspan="2"><strong>
                    <asp:Label ID="Bienvenido" runat="server" Text="Bienvenido! Ingrese sus credenciales:"></asp:Label>
                    </strong></td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style26"></td>
                <td class="auto-style6"></td>
                <td class="auto-style26"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style27">
                    <asp:Label ID="Usuario" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RangeValidator ID="RvUsuario" runat="server" ErrorMessage="El formato ingresado no es correcto"></asp:RangeValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="LbUsuario" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button1" runat="server" Text="SIGUIENTE" />
                    </strong></td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
