<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="BiletGuncelle.aspx.cs" Inherits="THYBiletWebOtomasyonu.BiletGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="form1" runat="server">

    <div class="form-group">

        <div>

            <asp:Label for="TxtBiletId" runat="server" ForeColor="#CC00FF" ID="ctl00">Bilet ID</asp:Label> 
            <asp:TextBox ID="TxtBiletId" runat="server" CssClass="form-control"></asp:TextBox>
            <%--en üste ID alanı ekledik çünkü ID değerine göre işlem yapıcak--%>
        </div>
        <br />
        <div>

            <asp:Label for="TxtNerdenn" runat="server" ForeColor="#CC00FF" ID="ctl01">Nereden</asp:Label>
            <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtNerdenn" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtNereyee" runat="server" ForeColor="#CC00FF" ID="ctl02">Nereye </asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtNereyee" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtTarihh" runat="server" ForeColor="#CC00FF" ID="ctl03">Tarih</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtTarihh" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtYolcuu" runat="server" ForeColor="#CC00FF" ID="ctl04">Yolcu</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtYolcuu" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>

            <asp:Label for="TxtKoltukNo" runat="server" ForeColor="#CC00FF" ID="ctl05">Koltuk Numaarası</asp:Label>
            <%--bu label textboxdan gelen değer için çalıssın--%>
            <asp:TextBox ID="TxtKoltukNo" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
    </div>

    <br />
            <asp:Button ID="Button1" runat="server" Text=" Bileti Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" ForeColor="#660066" />


</form>

</asp:Content>
