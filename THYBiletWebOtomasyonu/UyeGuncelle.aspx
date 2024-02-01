<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="UyeGuncelle.aspx.cs" Inherits="THYBiletWebOtomasyonu.UyeGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--UyeEkle ile UyeGuncelle arayüzü benzer diye direk UyekEkle.aspx sayfasından kodu kopyaladık--%>

    <form id="form1" runat="server">

        <div class="form-group">

            <div>

                <asp:Label for="TxtUyeId" runat="server" ForeColor="Red" ID="ctl00">Üye ID</asp:Label>
                <asp:TextBox ID="TxtUyeId" runat="server" CssClass="form-control"></asp:TextBox>
                <%--en üste ID alanı ekledik çünkü ID değerine göre işlem yapıcak--%>
            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeTcc" runat="server" ForeColor="Red" ID="ctl01">Üye TC Numarası</asp:Label>
                <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeTcc" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeSifree" runat="server" ForeColor="Red" ID="ctl02">Üye Şifresi </asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeSifree" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUUyeAdd" runat="server" ForeColor="Red" ID="ctl03">Üye Adı</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeAdd" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeSoyadd" runat="server" ForeColor="Red" ID="ctl04">Üye Soyadı</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeSoyadd" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeTelefonn" runat="server" ForeColor="Red" ID="ctl05">Üye Telefonu</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeTelefonn" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <div>

                <asp:Label for="TxtUyeeUlkee" runat="server" ForeColor="Red" ID="ctl06">Üye Ülkesi</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeeUlkee" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeeSehirr" runat="server" ForeColor="Red" ID="ctl07">Üye Şehri</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeeSehirr" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label for="TxtUyeeMaili" runat="server" ForeColor="Red" ID="ctl08">Üye Maili</asp:Label>
                <%--bu label textboxdan gelen değer için çalıssın--%>
                <asp:TextBox ID="TxtUyeeMaili" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />


        </div>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Üyelik Bilgilerini Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click1" ForeColor="Red" />


    </form>


</asp:Content>
