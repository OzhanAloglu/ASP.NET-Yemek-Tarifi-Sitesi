<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            color: #FFFF00;
        }
        .auto-style7 {
            color: #FFFF00;
            font-weight: normal;
        }
        .auto-style8 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td style="text-align: center; font-weight: 700; color: #FFFF00; margin-left: 40px">
                        <asp:Label ID="Label11" runat="server" Text="Label" style="text-align: center">GÜNÜN YEMEĞİ</asp:Label>
                    </td>
                </tr>
                <tr>
                    <th class="auto-style5" style="margin-left: 40px"><span class="auto-style6">Adı:</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </th>
                </tr>
                
                <tr>
                    <th class="auto-style5" style="margin-left: 80px"><span class="auto-style6">Malzemeler:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </th>
                </tr>
               
                <tr>
                    <th class="auto-style5" style="margin-left: 80px"><span class="auto-style6">Tarifi:</span><asp:Label ID="Label5" runat="server" Text='<%#Eval("YemekTarif") %>'></asp:Label>
                    </th>
                </tr>
                <tr>
                    <th class="auto-style5" style="margin-left: 80px">
                        <asp:Image ID="Image1" runat="server" Height="202px" style="text-align: center" Width="321px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </th>
                </tr>
                <tr>
                    <th class="auto-style5" style="margin-left: 80px"><strong><em><span class="auto-style6">Puan:</span><span class="auto-style7"> </span><span class="auto-style8">( </span></em></strong><asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        /10)</th>
                </tr>
                <tr>
                    <th class="auto-style5" style="margin-left: 80px"><span class="auto-style6"><em>Eklenme Tarihi:</em></span><asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </th>
                </tr>
                <tr>
                    <th class="auto-style5" style="margin-left: 80px">&nbsp;</th>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


