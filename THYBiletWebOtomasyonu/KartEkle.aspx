<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KartEkle.aspx.cs" Inherits="THYBiletWebOtomasyonu.KartEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
     <%-- KartEkle sayfamız bizim BiletEkle sayfamıza benziyor olucak--%>

 <form id="form1" runat="server">

     <div class="form-group">

         <div>
             <asp:Label for="TxtKarttAdSyd" runat="server" ForeColor="#00CC00" ID="ctl00">Kart Üzerindeki Ad-Soyad</asp:Label>
             <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtKarttAdSyd" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
         <div>

             <asp:Label for="TxtKarttNo" runat="server" ForeColor="#33CC33" ID="ctl01">Kart Üzerindeki Numara </asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtKarttNo" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
         <div>

             <asp:Label for="TxtKarttCvc" runat="server" ForeColor="#00CC00" ID="ctl02">Kart Üzerindeki CVC </asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtKarttCvc" runat="server" CssClass="form-control"></asp:TextBox>
         
         </div>
         <br />
         <div>

             <asp:Label for="TxtKarttTarih" runat="server" ForeColor="#009933" ID="ctl03">Kart Üzerindeki Son Kullanma Tarihi</asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtKarttTarih" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
        
     </div>

     <asp:Button ID="Button1" runat="server" Text="Kart Oluştur" CssClass="btn btn-info" OnClick="Button1_Click" ForeColor="#009933" />

 </form>



</asp:Content>
