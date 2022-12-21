<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 103%;
        }
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        height: 29px;
    }
    .auto-style8 {
        height: 29px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style9 {
        font-weight: bold;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label4" runat="server" style="font-size: xx-large; font-weight: 700; color: #C0C0C0;" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" style="font-size: x-large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                        -
                        <asp:Label ID="Label7" runat="server" style="font-size: xx-small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />

    <div style="background-color: #CCFFCC; text-align: center;">YORUM YAPMA PANELİ</div>

    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Ad Soyad:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_Adsoyad" runat="server" Width="233px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Mail:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_mail" runat="server" Width="233px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Yorumunuz:</td>
            <td class="auto-style7" style="margin-left: 80px">
                <asp:TextBox ID="txt_yorum" runat="server" Height="119px" style="text-align: left" TextMode="MultiLine" Width="233px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center; margin-left: 80px">
                <asp:Button ID="txt_yorumyap" runat="server" OnClick="txt_yorumyap_Click" style="font-weight: 700; text-align: center; font-size: medium; background-color: #99FFCC" Text="Yorum Yap" CssClass="myButton" />
            </td>
        </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
