<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JSON.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br/>
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br/>
            <asp:ListBox ID="ltbPersona" runat="server"></asp:ListBox>
            <br/>
            <asp:Button ID="btnJson" runat="server" Text="JSON" OnClick="btnJson_Click" />

        </div>
    </form>
</body>
</html>
