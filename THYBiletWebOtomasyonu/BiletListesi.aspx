<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="BiletListesi.aspx.cs" Inherits="THYBiletWebOtomasyonu.BiletListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <%--WebForm1.aspx sayfamızdan aldık,arayüzler aynı olucak diye--%>
     
 <table class="table table-bordered  table-hover">
     <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
     <%-- table-border ile kutucukları ayırdı çizgilerle--%>
     <tr>
         <th scope="col">ID</th>
         <th scope="col">NEREDEN</th>
         <th scope="col">NEREYE</th>
         <th scope="col">TARİH</th>
         <th scope="col">YOLCU</th>
         <th scope="col">KOLTUK NUMARASI</th>
        

     </tr>

     <tbody>

         <asp:Repeater ID="Repeater1" runat="server">
             <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

             <ItemTemplate>
                 <%--verileri eklemek için REPEATERİMİZE ıtemtemplateyi ekleDİK--%>

                 <tr>
                     <%-- VERİLERİ EKLEMEK İÇİN SATIR GEREKİYOR ÖNCE--%>
                     <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                     <td><%#Eval("BILETID")%></td>
                     <td><%#Eval("NEREDEN")%></td>
                     <td><%#Eval("NEREYE")%></td>
                     <td><%#Eval("TARIH")%></td>
                     <td><%#Eval("YOLCU")%></td>
                     <td><%#Eval("KOLTUKNO")%></td>
                     <td>



                         <%--  //ARAÇ KUTUSUNDAN, YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>

                         <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir 
             e uste sectiğin ıd olur url ksmında, evval ile de diğer sayfaya değeri taşımamızda kullanırız--%>

                         <%--  GÖRÜNTÜYÜ GÜZELLEŞTİRMEK İÇİN BUTONUMSU GÖRÜNSÜN DİYE CSSCLASS KODUNU EKLEDİK--%>
                         <%--SİLME İŞLEMİNİ ATADIĞIMIZ İD'E GÖRE YAPICAZ, İŞLEM ID'DEN ANLAYARAK SİLME YAPACAK--%>

                         <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/BiletSil.aspx?BILETID="+ Eval("BILETID") %>' runat="server"
                             CssClass="btn btn-danger">Bileti Sil</asp:HyperLink>

                         <asp:HyperLink ID="HyperLink2"  NavigateUrl='<%#"~/BiletGuncelle.aspx?BILETID="+ Eval("BILETID") %>' runat="server"
                             CssClass="btn btn-success">Bileti Güncelle</asp:HyperLink>

                        <%-- bu şekide güncelle butonuna basınca güncelliyecegin satırdaki bilgiler güncelle
                         sayfasına götürür, gelen bilgiler üstünde hızlıca değişim yapabilirsin--%>

                         <%-- guncelle işleminde de bastığında ilk ıp alması için navigation koşulunu 
                             yazdık cunku where kosulu ıp'e göre--%>


                     </td>
                 </tr>
                 <%--  sayfayı yenilesende gelmez kodlar çünkü backend ksımını da kod yazman lazım--%>
                 <%-- sağ tık VEYA F7-> kodu görüntüle ile c# kod kımına gidelim backend--%>
             </ItemTemplate>

         </asp:Repeater>
     </tbody>
 </table>



</asp:Content>
