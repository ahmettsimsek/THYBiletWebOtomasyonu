<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="BiletEkle.aspx.cs" Inherits="THYBiletWebOtomasyonu.BiletEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <%-- BiletEkle sayfamız bizim UyeEkle sayfamıza benziyor olucak--%>

 <form id="form1" runat="server">

     <div class="form-group">

         <div>
             <asp:Label for="TxtNerden" runat="server" ForeColor="#CC00FF" ID="ctl00">Nerden</asp:Label>
             <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtNerden" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
         <div>

             <asp:Label for="TxtNereye" runat="server" ForeColor="#CC00FF" ID="ctl01">Nereye </asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtNereye" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
         <div>

             <asp:Label for="TxtTarıh" runat="server" ForeColor="#CC00FF" ID="ctl02">Tarih </asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtTarıh" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
         </div>
         <br />
         <div>

             <asp:Label for="TxtYolcu" runat="server" ForeColor="#CC00FF" ID="ctl03">Yolcu Türü</asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtYolcu" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
         <div>

             <asp:Label for="TxtKoltuk" runat="server" ForeColor="#CC00FF" ID="ctl04">Koltuk Numarası</asp:Label>
             <%--bu label textboxdan gelen değer için çalıssın--%>
             <asp:TextBox ID="TxtKoltuk" runat="server" CssClass="form-control"></asp:TextBox>

         </div>
         <br />
     </div>

     <asp:Button ID="Button1" runat="server" Text="Bilet Oluştur" CssClass="btn btn-info" OnClick="Button1_Click" ForeColor="#660066" />

 </form>



</asp:Content>
