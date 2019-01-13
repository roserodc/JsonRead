<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JSON.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox><br/>
            
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br/>
            <asp:ListBox ID="ltbPersona" runat="server"></asp:ListBox>
            <br/>
            <asp:Button ID="btnJson" runat="server" Text="JSON" OnClick="btnJson_Click" />

        </div>--%>
       <%--info cliente--%>
        <div>
            <asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social"></asp:Label>
            <asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblFechaEmision" runat="server" Text="Fecha Emisión"></asp:Label>
            <asp:TextBox ID="txtFechaEmision" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblIdentificacion" runat="server" Text="Identificación"></asp:Label>
            <asp:TextBox ID="txtIdentificacion" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br/>
            <asp:Button ID="btnAgregarCli" runat="server" Text="Agregar Nuevo Cli" OnClick="btnAgregarCli_Click"  />
            <br/>
            <asp:ListBox ID="ltbCliente" runat="server"></asp:ListBox>
            <br/>
            <asp:Button ID="btnCliente" runat="server" Text="Cliente JSON" OnClick="btnCliente_Click"  />
        </div>
        <br/><br/>
        <%--info factura--%>
        <div>
            <asp:Label ID="lblNroFactura" runat="server" Text="Nro. Factura Electrónica"></asp:Label>
            <asp:TextBox ID="txtNroFactura" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal"></asp:Label>
            <asp:TextBox ID="txtSubtotal" runat="server" Width="143px"></asp:TextBox><br/>
            <asp:Label ID="lblIVA" runat="server" Text="IVA"></asp:Label>
            <asp:TextBox ID="txtIVA" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblFormaPago" runat="server" Text="Forma de Pago"></asp:Label>
            <asp:TextBox ID="txtFormaPago" runat="server"></asp:TextBox><br/>
            <asp:Button ID="btnAgregarFact" runat="server" Text="Agregar Nueva Factura" OnClick="btnAgregarFact_Click" />
            <br/>
            <asp:ListBox ID="ltbFactura" runat="server"></asp:ListBox>
            <br/>
            <asp:Button ID="btnFactura" runat="server" Text="Factura JSON" OnClick="btnFactura_Click"  />
        </div>
    </form>
</body>
</html>
