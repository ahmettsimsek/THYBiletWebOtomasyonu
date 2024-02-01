<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaKullanıcı.Master" AutoEventWireup="true" CodeBehind="AdminWebForm.aspx.cs" Inherits="THYBiletWebOtomasyonu.AdminWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    HOŞ GELDİNİZ ADMİN, BİZ KOCA BİR AİLEYİZ VE SİZE MİNNETTARIZ...


<table class="table table-bordered  table-hover">
    <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
    <%-- table-border ile kutucukları ayırdı çizgilerle--%>
    <tr>
    
        <th scope="col">KURUCUNUN NUMARASI</th>
        <th scope="col">KURUCUNUN ŞİFRESİ</th>
        <th scope="col">KURUCUNUN ADI</th>
        <th scope="col">KURUCUNUN SOYADI</th>
       
    </tr>

    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

            <ItemTemplate>
                <%--verileri eklemek için REPEATERİMİZE ıtemtemplateyi ekleDİK--%>

                <tr>
                    <%-- VERİLERİ EKLEMEK İÇİN SATIR GEREKİYOR ÖNCE--%>
                    <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                    
                    <td><%#Eval("ADMINNUMARA")%></td>
                    <td><%#Eval("ADMINSIFRE")%></td>
                    <td><%#Eval("ADMINAD")%></td>
                    <td><%#Eval("ADMINSOYAD")%></td>
                   
                  
                </tr>
                <%--  sayfayı yenilesende gelmez kodlar çünkü backend ksımını da kod yazman lazım--%>
                <%-- sağ tık -> kodu görüntüle ile c# kod kımına gidelim backend--%>
            </ItemTemplate>

        </asp:Repeater>
    </tbody>
</table>

<asp:DataList ID="DataList1" runat="server"></asp:DataList>



</asp:Content>
