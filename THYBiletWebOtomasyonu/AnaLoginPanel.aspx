<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnaLoginPanel.aspx.cs" Inherits="THYBiletWebOtomasyonu.AnaLoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--doysalar1->bootstrap.min.css ekle buraya,amacımız ıstediğimiz formatta görünmesi--%>
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <style type="text/css">
    .auto-style1{     /*başlık kısmını özelleştirme yaptık css ile, renk, yazı tipi vs*/
        color: #f00f;
        text-align: center;
    }
    .newStyle1 {
        font-family:"Segoe Script";
    }

</style>

</head>
<body>
    <form id="form1" runat="server">

        
        <script type="text/javascript">
            function showAlert() {
                alert("Merhaba sayın Kurucu, THY WEB SAYFASINA HOŞ GELDİNİZ!");
            }
        </script>

        <div style="width: 700px; margin: auto">
            <%-- textboxımızın width ile boyutunu düzelttik,margin ile sayfayı ortalattırdık--%>

            <h4>TÜRK HAVA YOLLARI WEB UYGULAMASI ADMİN GİRİŞ EKRANI</h4>
            <%--İLE BAŞLIĞIMIZI OLUŞTURDUK--%>
            <br />
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="250px" Width="300px" ImageUrl="~/admin.jpg" />
            </div>

            <div>
                <asp:Label for="TxtAdminNumara" runat="server" ForeColor="#66FF66" ID="ctl04">Kurucunun Numarası</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtAdminNumara" runat="server" CssClass="form form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                 
                <asp:Label for="TxtAdminSifre" runat="server" ForeColor="Lime" ID="ctl05">Kurucunun Şifresi</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtAdminSifre" runat="server" CssClass="form-control form-control"></asp:TextBox>

            </div>
            <br />

            <asp:Button ID="Btnnggirisyap" runat="server" Text="Sayın Kurucu Hesabınıza Giriş Yapınız" CssClass="btn btn-danger" Width="700px" ForeColor="Lime" OnClick="Btnnggirisyap_Click" />
            <br />
             <br />

            

        </div>
    </form>
</body>
</html>