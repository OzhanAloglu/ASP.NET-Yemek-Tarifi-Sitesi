<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            color: #99FFCC;
        }

        .auto-style7 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td style="color: #999999; background-color: #C0C0C0;"><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>" >
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' Style="font-weight: 700; font-size: x-large; color: #000000; text-align: center;"></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><span class="auto-style6"><strong>Malzemeler:</strong></span>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><span class="auto-style6"><strong>Yemek Tarifi:</strong></span>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><span class="auto-style6"><strong>Eklenme Tarihi:</strong></span>
                    <asp:Label ID="Label6" runat="server" Style="font-weight: 700; color: #FFFFFF" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        - <strong><span class="auto-style6">Puan:&nbsp; </span>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Style="font-style: italic; font-size: large;" Text='<%# Eval("YemekPuan") %>' ToolTip="float"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: inset; border-bottom-width: medium; border-bottom-color: #C0C0C0">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
