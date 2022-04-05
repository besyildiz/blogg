<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="blogg.yonetim.anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          


            <table border="1">
                <tr><td>
                         


                    </td>
                    <td>
                         


                    </td>
                    <td>  <asp:Button Text="Oturumu Kapat" ID="btOturumuKapat" runat="server"
                OnClick="btOturumuKapat_Click" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>İsim soyisim</td>
                    <td>        <asp:TextBox runat="server" ID="tbIsim" BackColor="LightPink"/> </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbSoyisim" BackColor="LightPink"/>  </td>
                    <td>
                        <asp:Button Text="Kaydet" runat="server" id="btIsimSoyisimKaydet" 
                            OnClick="btIsimSoyisimKaydet_Click"/></td>
                </tr>
                <tr>   <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
