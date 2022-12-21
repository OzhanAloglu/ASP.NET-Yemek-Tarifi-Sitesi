<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSitesi.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 168px;
            background-color: #CCFF66;
        }
        .auto-style12 {
            background-color: #CCFF66;
        }
        .auto-style13 {
            margin-left: 160px;
            background-color: #CCFF66;
        }
        .auto-style14 {
            margin-left: 280px;
            background-color: #CCFF66;
        }
        .auto-style15 {
            text-align: center;
            margin-left: 280px;
            background-color: #CCFF66;
        }
        .auto-style16 {
            width: 168px;
            text-align: right;
            background-color: #CCFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

























    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Ad Soyad:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txt_Adısoyadı" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Mesaj Başlık:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txt_mesajbaslık" runat="server" Height="31px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Mail:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtmail" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>İçerik:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtiçerik" runat="server" Height="151px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="btn_Onayla" runat="server" CssClass="myButton" Text="Onayla" />
            </td>
        </tr>
    </table>

























</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
