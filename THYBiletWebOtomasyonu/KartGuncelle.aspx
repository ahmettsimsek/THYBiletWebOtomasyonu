<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KartGuncelle.aspx.cs" Inherits="THYBiletWebOtomasyonu.KartGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

            <form id="form1" runat="server">

    <div class="form-group">

        <div>

            <asp:Label for="TxttKarttId" runat="server" ForeColor="#009933" ID="ctl00">Kart ID</asp:Label> 
            <asp:TextBox ID="TxttKarttId" runat="server" CssClass="form-control"></asp:TextBox>
            <%--en üste ID alanı ekledik çünkü ID değerine göre işlem yapıcak--%>
        </div>
        <br />
        <div>

            <asp:Label for="TxttAddSoyad" runat="server" ForeColor="#009933" ID="ctl01">Kart Ad-Soyad</asp:Label>
            <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxttAddSoyad" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxttKarttNo" runat="server" ForeColor="#009933" ID="ctl02">KartNo </asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxttKarttNo" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxttKarttCvc" runat="server" ForeColor="#009933" ID="ctl03">Kart CVC</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxttKarttCvc" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxttKarttTarih" runat="server" ForeColor="#009933" ID="ctl04">Kart Tarihi</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxttKarttTarih" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        
    </div>

    <br />
                <asp:Button ID="Button1" runat="server" Text=" Kartı Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" ForeColor="#66FF33" />


</form>


</asp:Content>
