<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="YemekTarifiSitesi.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            background-color: #CCFF66;
        font-size: large;
    }
    .auto-style11 {
        width: 74%;
        height: 158px;
    }
    .auto-style12 {
        background-color: #CCFF66;
        margin-left: 480px;
    }
    .auto-style13 {
        background-color: #CCFF66;
        text-align: center;
        margin-left: 480px;
    }
    .auto-style14 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style14">
    <strong>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        HAKKIMIZDA

    </asp:Panel>

    </strong>
</div>
<table class="auto-style11">
    <tr>
        <td class="auto-style12">
            <asp:TextBox ID="txt_acıklama" runat="server" Height="228px" TextMode="MultiLine" Width="335px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Button ID="btn_Güncelle" runat="server" CssClass="myButton" Text="Güncelle" OnClick="btn_Güncelle_Click" />
        </td>
    </tr>
    </table>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
