<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-weight: bold;
        text-align: right;
        color: #CCFF66;
    }
    .auto-style7 {
        font-size: x-large;
        text-align: center;
        color: #FFFF99;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="auto-style5">
    <tr>
        <td class="auto-style7" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="txt_MesajAdSoyad" runat="server" style="text-align: left" Width="226px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="txt_MesajMailadres" runat="server" style="text-align: left" Width="226px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Konu:</td>
        <td>
            <asp:TextBox ID="txt_mesajkonu" runat="server" Height="44px" style="text-align: left" TextMode="MultiLine" Width="226px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mesaj:</td>
        <td>
            <asp:TextBox ID="txt_mesaj" runat="server" Height="154px" style="text-align: left" TextMode="MultiLine" Width="226px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="text-align: center">
            <asp:Button ID="btn_Gönder" runat="server" style="color: #FF0066; font-size: large; background-color: #FFFFFF" Text="Gönder" CssClass="myButton" OnClick="btn_Gönder_Click" />
        </td>
    </tr>
</table>
</asp:Content>

