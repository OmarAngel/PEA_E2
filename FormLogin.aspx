<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="PA1_Grupo1_Ej2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PA1 - Ejercicio 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
</head>
<body>
    <section id="contenido" class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <form id="form1" runat="server">
                          <div class="col form-group text-center">
                            <h1>INICIAR SESIÓN</h1>
                          </div>
                          <div class="form-group">
                                <asp:Label ID="labelEmail" runat="server">Correo electrónico</asp:Label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" placeholder="Ingrese su correo electrónico"></asp:TextBox>
                          </div>
                          <div class="form-group">
                                <asp:Label ID="labelPassword" runat="server">Contraseña</asp:Label>
                                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
                          </div>
                          <div class="form-group">
                                <asp:Button ID="btnEnviar" CssClass="btn btn-primary" runat="server" Text="INGRESAR" OnClick="btnEnviar_Click" />
                          </div>

                            <div class="form-group">
                                <asp:Label ID="labelSuccess" CssClass="alert alert-success mt-5" Visible="false" runat="server">Los datos ingresados son correctos</asp:Label> 
                                <asp:Label ID="labelDanger" CssClass="alert alert-danger mt-5" Visible="false" runat="server">Los datos ingresados no son correctos</asp:Label> 
                                <asp:Label ID="labelObligatorios" CssClass="alert alert-danger mt-5" Visible="false" runat="server">Todos los campos son obligatorios</asp:Label> 
                            </div>
                   </form>
                </div>
            </div>
        </div>
    </section>

</body>
</html>
