<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="YemekTarifiSitesi.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            background-color: #CCFF66;
        }
        .auto-style12 {
            text-align: right;
            font-size: large;
            background-color: #CCFF66;
        }
        .auto-style13 {
            text-align: right;
            font-size: large;
            background-color: #CCFF66;
            height: 110px;
        }
        .auto-style14 {
            background-color: #CCFF66;
            height: 110px;
        text-align: center;
    }
    .auto-style15 {
        background-color: #CCFF66;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yemek Ad:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="txt_yemekad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Malzemeler:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="txt_malzemelerr" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif:</strong></td>
            <td class="auto-style15">
                <asp:TextBox ID="txt_yemektariff" runat="server" Height="200px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Kategori:</strong></td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Görüntüsü:</strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btn_güncelle" runat="server" CssClass="myButton" OnClick="btn_güncelle_Click" Text="Güncelle" Width="219px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btn_gününyemek" runat="server" CssClass="myButton" OnClick="btn_gününyemek_Click" Text="GününYemeğiSeç" Width="219px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
