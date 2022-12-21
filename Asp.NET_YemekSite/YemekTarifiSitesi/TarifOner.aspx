<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style5">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Ad:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Malzemeler:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Yapılış:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtYapilisi" runat="server" Height="150px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Resim:</td>
        <td style="margin-left: 40px">
            <asp:FileUpload ID="FileResim" runat="server" Width="200px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Öneren:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifÖneren" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresi:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td></td>
        <td style="text-align: center; margin-left: 40px">
            <asp:Button ID="btnTarifÖner" runat="server" BackColor="#6699FF" Font-Bold="True" Font-Italic="True" Font-Size="23px" Text="Tarif Öner" Width="150px" OnClick="btnTarifÖner_Click" CssClass="myButton" />
        </td>
    </tr>
</table>
</asp:Content>

