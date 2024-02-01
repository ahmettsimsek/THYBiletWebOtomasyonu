<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="THYBiletWebOtomasyonu.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--doysalar1->bootstrap.min.css ekle buraya,amacımız ıstediğimiz formatta görünmesi--%>
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <style type="text/css">
        .auto-style1 { /*başlık kısmını özelleştirme yaptık css ile, renk, yazı tipi vs*/
            color: #f00f;
            text-align: center;
        }

        .newStyle1 {
            font-family: "Segoe Script";
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <script type="text/javascript">
            function showAlert() {
                alert("Merhaba, THY WEB SAYFASINA HOŞ GELDİNİZ!");
            }
        </script>

        <div style="width: 700px; margin: auto">
            <%-- textboxımızın width ile boyutunu düzelttik,margin ile sayfayı ortalattırdık--%>

            <h3>TÜRK HAVA YOLLARI WEB UYGULAMASI GİRİŞ EKRANI</h3>
            <%--İLE BAŞLIĞIMIZI OLUŞTURDUK--%>
            <br />
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="250px" Width="300px" ImageUrl="~/LoginPanel.gif" />
            </div>

            <div>
                <asp:Label for="TxtKullTcNumara" runat="server" ForeColor="#FF9900" ID="ctl04">KULLANICI TC NUMARASI</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtKullTcNumara" runat="server" CssClass="form form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtKullSifre" runat="server" ForeColor="#FF9900" ID="ctl05">KULLANICI ŞİFRESİ</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtKullSifre" runat="server" CssClass="form-control form-control"></asp:TextBox>

            </div>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Hesaba Giriş Yapınız" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />

            <asp:Button ID="Button2" runat="server" Text="Hesap Oluştur" CssClass="btn btn-block" Width="500px" OnClick="Button2_Click" ForeColor="#FF9900" />

            <br />

            <asp:Button ID="Button3" runat="server" Text="Personel Girişi" CssClass="btn btn-primary" Width="500px" OnClick="Button3_Click" ForeColor="#333300" />
            <br />
            <br />

            <asp:Button ID="Button4" runat="server" Text="Admin Girişi" CssClass="btn btn-danger" Width="500px" OnClick="Button4_Click" ForeColor="Blue" />


        </div>
    </form>
</body>
</html>
