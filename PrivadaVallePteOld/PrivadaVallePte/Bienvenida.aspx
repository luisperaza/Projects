<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bienvenida.aspx.cs" Inherits="PrivadaVallePte.Bienvenida" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            width: 173px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 5px;
            height: 23px;
        }
        .style18
        {
            width: 43px;
        }
        .style23
        {
            width: 365px;
        }
        .style25
        {
        }
        .style26
        {
            width: 5px;
        }
        .style27
        {
            width: 207px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="191px" 
            ImageUrl="~/Images/FullSizeRender1.jpg" Width="583px" />
    
    </div>


 
    <table style="width:100%;">
        <tr>
            <td class="style2" align="left" colspan="8">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="left" colspan="8">
        <asp:Label ID="Label2" runat="server" Text="Registro de Pago " Font-Names="Arial" 
                    Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br />
        <asp:Label ID="Label14" runat="server" Text="Privada Valle Poniente" Font-Names="Arial" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label1" runat="server" Text="Email:" Font-Names="Arial" Font-Bold="True" 
                    Font-Size="Larger"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style1" colspan="6">
        <asp:TextBox ID="TextBox1" runat="server" Width="369px" Font-Size="Larger">luisperaza_@hotmail.com</asp:TextBox>
            </td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label3" runat="server" Text="Departamento:" Font-Names="Arial" 
                    Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Letra"></asp:Label>
            </td>
            <td align="right">
                <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Large">
                    <asp:ListItem>k</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="left">
                <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Núm"></asp:Label>
            </td>
            <td class="style1" align="left" colspan="3">
                <asp:DropDownList ID="DropDownList5" runat="server" Font-Size="Large">
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label4" runat="server" Text="Tipo de Pago:" Font-Names="Arial" 
                    Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style1" align="left" colspan="6">
                <asp:DropDownList ID="DropDownList6" runat="server" Font-Size="Large" 
                    Width="382px">
                    <asp:ListItem>Impermeabilización 2016</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style1" align="left" colspan="6">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label5" runat="server" Text="Fecha de Pago:" Font-Names="Arial" 
                    Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="Dia"></asp:Label>
            </td>
            <td align="right">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large">
                    <asp:ListItem>29</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="left">
                <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Mes"></asp:Label>
            </td>
            <td class="style18" align="right">
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large">
                    <asp:ListItem>Octubre</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style26" align="right">
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="Año"></asp:Label>
            </td>
            <td class="style27" align="left">
                <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Large">
                    <asp:ListItem>2016</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label6" runat="server" Text="Banco:" Font-Names="Arial" Font-Bold="True" 
                    Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="left" colspan="6">
                <asp:DropDownList ID="DropDownList7" runat="server" Font-Size="Large" 
                    Height="30px" Width="374px">
                    <asp:ListItem>Banorte</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label7" runat="server" Text="Referencia:" Font-Names="Arial" 
                    Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="left" colspan="6">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Width="359px">123480480923409</asp:TextBox>
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
        <asp:Label ID="Label8" runat="server" Text="Recibo de Pago:" Font-Names="Arial" 
                    Font-Bold="True" Font-Size="Larger"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="left" colspan="6">
                <asp:Image ID="Image2" runat="server" Height="87px" 
                    ImageUrl="~/Images/Capture.JPG" Width="114px" />
                <asp:Button ID="Button3" runat="server" Height="24px" Text="..." Width="24px" />
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                <asp:Button ID="Button2" runat="server" Font-Size="Large" Text="Enviar" />
            </td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="left" colspan="5">
                ©2016 | Todos los derechos Reservados</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style25" align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td class="style18" align="right">
                &nbsp;</td>
            <td class="style26" align="right">
                &nbsp;</td>
            <td class="style27" align="left">
                &nbsp;</td>
            <td class="style23" align="right">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
