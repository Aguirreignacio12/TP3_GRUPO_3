<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO_3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejercicio1</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td></td>
                    <td><asp:Label ID="LblTituloLocalidad" runat="server" Text="Localidades" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Nombre de la localidad"></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxLocalidad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvLocalidad" runat="server" ControlToValidate="TextBoxLocalidad">Ingrese nueva localidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RevLocalidad" runat="server" ControlToValidate="TextBoxLocalidad" ValidationExpression="[\w ]+">Contiene caracteres invalidos</asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CvLocalidad" runat="server" ControlToValidate="TextBoxLocalidad" OnServerValidate="CustomValidator1_ServerValidate">Localidad ya existente</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="BtnGuardarLocalidad" runat="server" Text="Guardar Localidad" OnClick="BtnGuardarLocalidad_Click" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="LblTituloUsuarios" runat="server" Text="Usuarios" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblUsuario" runat="server" Text="Nombre de usuario:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxUsuario" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblContraseña" runat="server" Text="Contraseña:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxContraseña" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblRepContrasenia" runat="server" Text="Repetir Contraseña: "></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxRepContrasenia" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblEmail" runat="server" Text="Correo electrónico: "></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblCP" runat="server" Text="CP: "></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LblUsuarioLocalidad" runat="server" Text="Localidades: "></asp:Label>
                    </td>
                    <td><asp:DropDownList ID="DDLLocalidades" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="BtnGuardarUsuario" runat="server" Text="Guardar Usuario" /></td>
                </tr>
              
                <tr>
                    <td><asp:Button ID="BtnIrAInicio" runat="server" Text="Ir a inicio .aspx" /></td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
