<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="blogg.yonetim.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <title>CodePen - Random Login Form</title>
  <link rel="stylesheet" href="./style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  <div class="body"></div>
        <div class="grad"></div>
		<div class="header">
			<div><span>Galerim</span></div>
		</div>
		<br>
		<div class="login">
	 
            <asp:TextBox runat="server" ID="tbKullaniciAdi" placeholder="Kullanıcı adı" /><br /><br />
            <asp:TextBox runat="server"  ID="tbSifre" placeholder="Şifre" />
				 <br>

            <asp:Button Text="Giriş" runat="server" id="btGiris" OnClick="btGiris_Click" />
			
     
		</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


    </form>
</body>
</html>
