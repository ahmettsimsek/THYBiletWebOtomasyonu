<%@ Page Title="" Language="C#" MasterPageFile="~/Personel.Master" AutoEventWireup="true" CodeBehind="PersonelListesi.aspx.cs" Inherits="THYBiletWebOtomasyonu.PersonelListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    TÜRK HAVA YOLLARI WEB SİTESİNE HOŞ GELDİNİZ...


<table class="table table-bordered  table-hover">
    <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
    <%-- table-border ile kutucukları ayırdı çizgilerle--%>
    <tr>
        <th scope="col">PERSONELİN ID</th>
        <th scope="col">PERSONELİN NUMARASI</th>
        <th scope="col">PERSONELİN ŞİFRESİ</th>
        <th scope="col">PERSONELİN ADI</th>
        <th scope="col">PERSONELİN SOYADI</th>
        <th scope="col">PERSONEL İŞLEMLERİ</th>
    
    </tr>

    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

            <ItemTemplate>
                <%--verileri eklemek için REPEATERİMİZE ıtemtemplateyi ekleDİK--%>

                <tr>
                    <%-- VERİLERİ EKLEMEK İÇİN SATIR GEREKİYOR ÖNCE--%>
                    <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                    <td><%#Eval("PERSONELID")%></td>
                    <td><%#Eval("PERSONELNUMARA")%></td>
                    <td><%#Eval("PERSONELSIFRE")%></td>
                    <td><%#Eval("PERSONELAD")%></td>
                    <td><%#Eval("PERSONELSOYAD")%></td>
                  
                    
                    <td>



                        <%--  //ARAÇ KUTUSUNDAN, YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>

                        <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir 
            e uste sectiğin ıd olur url ksmında, evval ile de diğer sayfaya değeri taşımamızda kullanırız--%>

                        <%--  GÖRÜNTÜYÜ GÜZELLEŞTİRMEK İÇİN BUTONUMSU GÖRÜNSÜN DİYE CSSCLASS KODUNU EKLEDİK--%>
                        <%--SİLME İŞLEMİNİ ATADIĞIMIZ İD'E GÖRE YAPICAZ, İŞLEM ID'DEN ANLAYARAK SİLME YAPACAK--%>

                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/PersonelSil.aspx?PERSONELID="+ Eval("PERSONELID") %>' runat="server"
                            CssClass="btn btn-danger">Personeli Sil</asp:HyperLink>

                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/PersonelGuncelle.aspx?PERSONELID="+ Eval("PERSONELID") %>' runat="server"
                            CssClass="btn btn-success">Personeli Güncelle</asp:HyperLink>

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

<asp:DataList ID="DataList1" runat="server"></asp:DataList>



</asp:Content>
