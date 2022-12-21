<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDüzenle.aspx.cs" Inherits="YemekTarifiSitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 101%;
    }
    .auto-style11 {
        background-color: #CCFF66;
    }
    .auto-style12 {
        text-align: center;
        background-color: #CCFF66;
    }
    .auto-style13 {
        width: 120px;
        background-color: #CCFF66;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style10">
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">KATEGORİ AD:</td>
        <td class="auto-style11">
            <asp:TextBox ID="txt_kategoriAd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">ADET:</td>
        <td class="auto-style11">
            <asp:TextBox ID="txt_kategoriadet" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">RESİM:</td>
        <td class="auto-style11">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="btn_güncelle" runat="server" CssClass="myButton" Text="Güncelle" OnClick="btn_güncelle_Click" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
