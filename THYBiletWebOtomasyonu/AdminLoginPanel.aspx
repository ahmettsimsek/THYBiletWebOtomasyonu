<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPanel.aspx.cs" Inherits="THYBiletWebOtomasyonu.AdminLoginPanel" %>

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
                alert("Merhaba sayın Personel, THY WEB SAYFASINA HOŞ GELDİNİZ!");
            }
        </script>


        <div style="width: 700px; margin: auto">
            <%-- textboxımızın width ile boyutunu düzelttik,margin ile sayfayı ortalattırdık--%>

            <h4>TÜRK HAVA YOLLARI WEB UYGULAMASI PERSONEL GİRİŞ EKRANI</h4>
            <%--İLE BAŞLIĞIMIZI OLUŞTURDUK--%>
            <br />
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="350px" Width="450px" ImageUrl="~/Personel.jpg" />
            </div>

            <div>
                <asp:Label for="TxtPersNumara" runat="server" ForeColor="Red" ID="ctl04">Personel Numarası</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtPersNumara" runat="server" CssClass="form form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtPersSifre" runat="server" ForeColor="Red" ID="ctl05">Personel Şifresi</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtPersSifre" runat="server" CssClass="form-control form-control"></asp:TextBox>

            </div>
            <br />

            <asp:Button ID="Btngirisyap" runat="server" Text="Hesaba Giriş Yapınız" CssClass="btn btn-primary" Width="700px" ForeColor="Red" OnClick="Btngirisyap_Click" />
            <br />
            <br />



        </div>
    </form>
</body>
</html>
