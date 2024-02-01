<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KartListesi.aspx.cs" Inherits="THYBiletWebOtomasyonu.KartListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered  table-hover">
    <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
    <%-- table-border ile kutucukları ayırdı çizgilerle--%>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">KART AD-SOYAD</th>
        <th scope="col">KART NUMARASI</th>
        <th scope="col">KART CVC</th>
        <th scope="col">KART SON KULLANIM TARİHİ</th>
        <th scope="col">HESAP İŞLEMLERİ</th>

    </tr>

    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

            <ItemTemplate>
                <%--verileri eklemek için REPEATERİMİZE ıtemtemplateyi ekleDİK--%>

                <tr>
                    <%-- VERİLERİ EKLEMEK İÇİN SATIR GEREKİYOR ÖNCE--%>
                    <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                    <td><%#Eval("KARTID")%></td>
                    <td><%#Eval("KARTADSOYAD")%></td>
                    <td><%#Eval("KARTNO")%></td>
                    <td><%#Eval("KARTCVC")%></td>
                    <td><%#Eval("KARTTARIH")%></td>
                 
                    <td>



                        <%--  //ARAÇ KUTUSUNDAN, YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>

                        <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir 
            e uste sectiğin ıd olur url ksmında, evval ile de diğer sayfaya değeri taşımamızda kullanırız--%>

                        <%--  GÖRÜNTÜYÜ GÜZELLEŞTİRMEK İÇİN BUTONUMSU GÖRÜNSÜN DİYE CSSCLASS KODUNU EKLEDİK--%>
                        <%--SİLME İŞLEMİNİ ATADIĞIMIZ İD'E GÖRE YAPICAZ, İŞLEM ID'DEN ANLAYARAK SİLME YAPACAK--%>

                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/KartSil.aspx?KARTID="+ Eval("KARTID") %>' runat="server"
                            CssClass="btn btn-danger">Kartı Sil</asp:HyperLink>

                        <asp:HyperLink ID="HyperLink2"  NavigateUrl='<%#"~/KartGuncelle.aspx?KARTID="+ Eval("KARTID") %>' runat="server"
                            CssClass="btn btn-success">Kartı Güncelle</asp:HyperLink>

                       <%-- bu şekide güncelle butonuna basınca güncelliyecegin satırdaki bilgiler güncelle
                        sayfasına götürür, gelen bilgiler üstünde hızlıca değişim yapabilirsin--%>

                        <%-- guncelle işleminde de bastığında ilk ıp alması için navigation koşulunu 
                            yazdık cunku where kosulu ıp'e göre--%>


                    </td>
                </tr>
                <%--  sayfayı yenilesende gelmez kodlar çünkü backend ksımını da kod yazman lazım--%>
                <%-- sağ tık -> kodu görüntüle ile c# kod kımına gidelim backend--%>
            </ItemTemplate>

        </asp:Repeater>
    </tbody>
</table>


</asp:Content>
