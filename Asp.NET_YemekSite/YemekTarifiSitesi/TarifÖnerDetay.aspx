<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifÖnerDetay.aspx.cs" Inherits="YemekTarifiSitesi.TarifÖnerDetay" %>
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
        width: 252px;
    }
    .auto-style13 {
        text-align: right;
    }
    .auto-style14 {
        width: 252px;
    }
        .auto-style15 {
            font-size: medium;
            text-align: right;
        }
        .auto-style16 {
            box-shadow: 0px 1px 0px 0px #fff6af;
            background-color: #ffec64;
            border-radius: 6px;
            border: 1px solid #ffaa22;
            display: inline-block;
            cursor: pointer;
            color: #333333;
            font-family: Arial;
            font-size: 15px;
            font-weight: bold;
            padding: 6px 24px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #ffee66;
            margin-top: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" Width="345px">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Ad:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_tarifad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Malzemeler:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_tarifmalzeme" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yapılış:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_tarifyapilis" runat="server" Height="170px" TextMode="MultiLine" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Resim:</strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="228px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_tariföneren" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Öneren Mail:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_önerenmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori:</strong></td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="157px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="btn_onayla" runat="server" CssClass="auto-style16" OnClick="btn_onayla_Click" Text="Onayla" Width="161px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
