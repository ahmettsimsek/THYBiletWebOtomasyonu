<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="PersonelGuncelle.aspx.cs" Inherits="THYBiletWebOtomasyonu.PersonelGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--UyeEkle ile UyeGuncelle arayüzü benzer diye direk UyekEkle.aspx sayfasından kodu kopyaladık--%>

    <form id="form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="GÜNCELLEME YAPILICAK PERSONELİN" ForeColor="#FF9900"></asp:Label>
            </div>
            <br />

            <div>
                <asp:Label ID="Label4" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
            </div>
            <br />
            <div>

                <asp:Label for="TxtpersId" runat="server" ForeColor="#6600CC" ID="ctl00">Personel ID</asp:Label>
                <asp:TextBox ID="TxtpersId" runat="server" CssClass="form-control"></asp:TextBox>
                <%--en üste ID alanı ekledik çünkü ID değerine göre işlem yapıcak--%>
            </div>
            <br />
            <div>

                <asp:Label for="Txtpersno" runat="server" ForeColor="#6600CC" ID="ctl01">Personel Numarası</asp:Label>
                <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="Txtpersno" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtpersSifree" runat="server" ForeColor="#6600CC" ID="ctl02">Personel Şifresi </asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtpersSifree" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtpersAdd" runat="server" ForeColor="#6600CC" ID="ctl03">Personel Adı</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtpersAdd" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtpersSoyadd" runat="server" ForeColor="#6600CC" ID="ctl04">Personel Soyadı</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtpersSoyadd" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />



        </div>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Personel Bilgilerini Güncelle" CssClass="btn btn-primary" ForeColor="#6600CC" OnClick="Button1_Click" />


    </form>



</asp:Content>
