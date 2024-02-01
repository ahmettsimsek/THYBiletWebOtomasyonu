<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="THYBiletWebOtomasyonu.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    TÜRK HAVA YOLLARI WEB SİTESİNE HOŞ GELDİNİZ...

    
    <table class="table table-bordered  table-hover">
        <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
        <%-- table-border ile kutucukları ayırdı çizgilerle--%>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">TC Kimlik NUMARASI</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">ÜLKE</th>
            <th scope="col">ŞEHİR</th>
            <th scope="col">MAİL</th>
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
                        <td><%#Eval("UYEID")%></td>
                        <td><%#Eval("TCNUMARA")%></td>
                        <td><%#Eval("UYESIFRE")%></td>
                        <td><%#Eval("UYEAD")%></td>
                        <td><%#Eval("UYESOYAD")%></td>
                        <td><%#Eval("UYETELEFON")%></td>
                        <td><%#Eval("UYEULKE")%></td>
                        <td><%#Eval("UYESEHIR")%></td>
                        <td><%#Eval("UYEMAIL")%></td>
                        
                        <td>



                            <%--  //ARAÇ KUTUSUNDAN, YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>

                            <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir 
                e uste sectiğin ıd olur url ksmında, evval ile de diğer sayfaya değeri taşımamızda kullanırız--%>

                            <%--  GÖRÜNTÜYÜ GÜZELLEŞTİRMEK İÇİN BUTONUMSU GÖRÜNSÜN DİYE CSSCLASS KODUNU EKLEDİK--%>
                            <%--SİLME İŞLEMİNİ ATADIĞIMIZ İD'E GÖRE YAPICAZ, İŞLEM ID'DEN ANLAYARAK SİLME YAPACAK--%>

                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/UyeSil.aspx?UYEID="+ Eval("UYEID") %>' runat="server"
                                CssClass="btn btn-danger">Hesabı Sil</asp:HyperLink>

                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/UyeGuncelle.aspx?UYEID="+ Eval("UYEID") %>' runat="server"
                                CssClass="btn btn-success">Hesabı Güncelle</asp:HyperLink>

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
