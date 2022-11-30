<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Fibo.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fibonnacci</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <label>Ingresa Nro</label>
                <asp:TextBox CssClass="form-control" ID="txtNo" runat="server"></asp:TextBox>
                <br />
                <asp:Button CssClass="btn btn-primary" ID="btnGenerate" runat="server" Text="Generar" OnClick="btnGenerate_Click" />
                <br />
                <asp:Label ID="lblOp" runat="server" CssClass="text-success"></asp:Label>   
            </div>
        </div>
    </form>
</body>
</html>
