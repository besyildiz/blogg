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
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button Text="Oturumu Kapat" ID="btOturumuKapat" runat="server"
                            OnClick="btOturumuKapat_Click" /></td>
                    <td>
                        <asp:HyperLink NavigateUrl="~/index.aspx" Text="Site anasayfası" Target="_blank"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>İsim soyisim</td>
                    <td>
                        <asp:TextBox runat="server" ID="tbIsim" BackColor="LightPink" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbSoyisim" BackColor="LightPink" />
                    </td>
                    <td>
                        <asp:Button Text="Kaydet" runat="server" ID="btIsimSoyisimKaydet"
                            OnClick="btIsimSoyisimKaydet_Click" /></td>
                </tr>
                <tr>
                    <td>Hakkında başlık</td>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbHakkindaBaslik" Width="100%"
                            BackColor="LightBlue" TextMode="MultiLine" />
                    </td>
                    <td>
                        <asp:Button Text="Kaydet" runat="server" ID="btHakkindaBaslik" 
                            OnClick="btHakkindaBaslik_Click" /></td>
                </tr>
                <tr>
                    <td>Hakkında detay</td>
                    <td colspan="2">
                        <asp:TextBox runat="server" ID="tbHakkindaDetay"
                             Width="100%" BackColor="LightGreen" TextMode="MultiLine"  Height="200"/>
                    </td>
                    <td>
                        <asp:Button Text="Kaydet" runat="server" ID="btHakkindaDetay" /></td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
