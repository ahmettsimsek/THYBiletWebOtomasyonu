<%@ Page Title="" Language="C#" MasterPageFile="~/HesapOlustur.Master" AutoEventWireup="true" CodeBehind="HesapOlusturWebForm.aspx.cs" Inherits="THYBiletWebOtomasyonu.HesapOlusturWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="form1" runat="server">

      <div class="form-group">

          <div>
              <asp:Label ID="Label1" runat="server" Text="ÜYELİK KAYIT BİLGİLERİ" ForeColor="#00CCFF"></asp:Label>
          </div>
          <br />

          <div>
              <asp:Label ID="Label4" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
          </div>
          <br />
          <div>
              <asp:Label for="TxtUyeTcsi" runat="server" ForeColor="Red" ID="ctl00">Üye TC Numarası</asp:Label>
              <%--bu label altındaki textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeTcsi" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeSifresi" runat="server" ForeColor="Red" ID="ctl01">Üye Şifresi </asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeSifresi" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeAdi" runat="server" ForeColor="Red" ID="ctl02">Üye Adı</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeAdi" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeSoyadi" runat="server" ForeColor="Red" ID="ctl03">Üye Soyadı</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeSoyadi" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>
              <asp:Label ID="Label5" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
          </div>
          <br />
          <div>
              <asp:Label ID="Label2" runat="server" Text="İLETİŞİM BİLGİLERİ" ForeColor="#00CCFF"></asp:Label>
          </div>
          <br />

          <div>
              <asp:Label ID="Label3" runat="server" Text="---------------------------------------------------------------------------------------------------------------------------------------------------------------"></asp:Label>
          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeTelefonu" runat="server" ForeColor="Red" ID="ctl04">Üye Telefonu</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeTelefonu" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeUlkesi" runat="server" ForeColor="Red" ID="ctl05">Üye Ülke</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeUlkesi" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeSehiri" runat="server" ForeColor="Red" ID="ctl06">Üye Şehir</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeSehiri" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
          <div>

              <asp:Label for="TxtUyeMaili" runat="server" ForeColor="Red" ID="ctl07">Üye Mail</asp:Label>
              <%--bu label textboxdan gelen değer için çalıssın--%>
              <asp:TextBox ID="TxtUyeMaili" runat="server" CssClass="form-control"></asp:TextBox>

          </div>
          <br />
      </div>

          <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" ForeColor="#006600" OnClick="Button1_Click" />


  </form>


</asp:Content>
