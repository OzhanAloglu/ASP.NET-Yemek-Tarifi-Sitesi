<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="YemekTarifiSitesi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p style="font-size: x-large; text-align: center">
        HAKKIMIZDA&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:DataList ID="DataList2" runat="server" style="font-weight: 700; color: #FFFF99">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

        <asp:Image ID="Image1" runat="server" Height="279px" ImageUrl="~/resimler/k_19113223_thumbnail.jpg" Width="349px" />

    </p>
</asp:Content>

