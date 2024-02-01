<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="THYBiletWebOtomasyonu.PersonelEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="form1" runat="server">

    <div class="form-group">

        <div>
            <asp:Label ID="Label1" runat="server" Text="İŞE ALINACAK YENİ PERSONELİN BİLGİLERİ" ForeColor="#FF9900"></asp:Label>
        </div>
        <br />

        <div>
            <asp:Label ID="Label4" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
        </div>
        <br />
        <div>
            <asp:Label for="TxtPersonelNo" runat="server" ForeColor="#6600CC" ID="ctl00">Personel Numarası</asp:Label>
            <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtUyeTcsi" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtPersonelSifre" runat="server" ForeColor="#6600CC" ID="ctl01">Personel Şifresi </asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtUyeSifresi" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtPersonelAdi" runat="server" ForeColor="#6600CC" ID="ctl02">Personel Adı</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtUyeAdi" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtPersonelSoyadi" runat="server" ForeColor="#6600CC" ID="ctl03">Personel Soyadı</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtUyeSoyadi" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
        </div>
        <br />
        
    </div>

            <asp:Button ID="Buttton1" runat="server" Text="Personeli Ekle" CssClass="btn btn-info" ForeColor="#6600CC" OnClick="Buttton1_Click" />


</form>


</asp:Content>
