<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sil.aspx.cs" Inherits="blogg.sil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="baglanti_cumlem" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="kullaniciadi" HeaderText="kullaniciadi" 
                    SortExpression="kullaniciadi" />
                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="baglanti_cumlem" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baglanti_cumlem %>" 
            ProviderName="<%$ ConnectionStrings:baglanti_cumlem.ProviderName %>" 
            SelectCommand="SELECT * FROM [kullanici]"></asp:SqlDataSource>
    
    </div>

    </form>
</body>
</html>
