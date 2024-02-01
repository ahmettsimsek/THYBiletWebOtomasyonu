<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSonrası.Master" AutoEventWireup="true" CodeBehind="LoginWebForm.aspx.cs" Inherits="THYBiletWebOtomasyonu.LoginWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>

                <asp:Label ID="Label1" runat="server" Text="THY WEB SAYFASINA GİRİŞ YAPAN ÜYENİN" ForeColor="Blue"></asp:Label>

            </div>
            <br />
            <br />
            <div>

                <asp:Label ID="Label4" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>

            </div>
            <br />


            <div>

                <asp:Label ID="Label2" runat="server" Text="ÜYELİK KAYIT BİLGİSİ" ForeColor="#FF3300"></asp:Label>

            </div>
            <br />
            <div>

                <asp:Label ID="Label3" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>

            </div>
            <br />

            <div>

                <asp:TextBox ID="TextBoxx1" runat="server" CssClass="form-control" Enabled="False">Kayıtlı TC numaranız:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx2" runat="server" CssClass="form-control" Enabled="False">Kayıtlı Şifreniz:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx3" runat="server" CssClass="form-control" Enabled="False">Kayıtlı Adınız:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx4" runat="server" CssClass="form-control" Enabled="False">Kayıtlı Soyadınız:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:Label ID="Label5" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>

            </div>
            <br />
            <div>

                <asp:Label ID="Label6" runat="server" Text="İLETİŞİM BİLGİSİ" ForeColor="#FF3300"></asp:Label>

            </div>
            <br />
            <div>

                <asp:Label ID="Label7" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>

            </div>
            <br />

            <div>

                <asp:TextBox ID="TextBoxx5" runat="server" CssClass="form-control" Enabled="False">Kayıtlı Telefon Numaranız:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx6" runat="server" CssClass="form-control" Enabled="False">Bulunduğunuz Ülke:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx7" runat="server" CssClass="form-control" Enabled="False">Bulunduğunuz Şehir:</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBoxx8" runat="server" CssClass="form-control" Enabled="False">Kayıtlı Mail Adresiniz:</asp:TextBox>

            </div>
            <br />
        </div>

        

    </form>

    <%-- yazdıktan sonra istatistikleri dataset ile çekşcez dataset1'e gidip tableadapter ekliycen--%>
</asp:Content>
