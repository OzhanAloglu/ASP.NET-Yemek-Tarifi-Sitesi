<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KATEGORİLER.aspx.cs" Inherits="YemekTarifiSitesi.KATEGORİLER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 100%;
    }
    .auto-style9 {
        width: 219px;
    }
    .auto-style10 {
        font-size: x-large;
            background-color: #0000FF;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
            text-align: center;
            background-color: #0000FF;
        }
        .auto-style17 {
            width: 30px;
            background-color: #0000FF;
        }
        .auto-style18 {
            width: 29px;
            background-color: #0000FF;
        }
        .auto-style21 {
            background-color: #0000FF;
        }
        .auto-style28 {
            width: 348px;
            float: left;
            height: 39px;
        }
        .auto-style31 {
            width: 326px;
            float: left;
            height: 42px;
        }
        .auto-style32 {
            width: 100%;
        }
        .auto-style33 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style34 {
            margin-left: 40px;
        }
        .auto-style35 {
            width: 25px;
        }
        .auto-style36 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style37 {
            text-align: center;
            font-size: large;
        }
        .auto-style38 {
            width: 101%;
            height: 166px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style28">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="btn_artı" runat="server" CssClass="auto-style15" Height="30px" OnClick="btn_artı_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="btn_eksi" runat="server" CssClass="auto-style12" Height="30px" OnClick="btn_eksi_Click" Text="-" Width="30px" />
                </td>
                <td class="auto-style16">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    </strong>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21" >
        <asp:DataList ID="DataList1" runat="server" Width="347px" Height="16px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style31">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            <a href="KATEGORİLER.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.jpg" style="text-align: right" /></a> 
                        </td>
                        <td style="text-align: right">
                           <a href="KategoriDüzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td style="text-align: right">&nbsp;</td>
                        <td style="text-align: right">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21" Width="347px">
        <table class="auto-style32">
            <tr>
                <td class="auto-style35">
                    <strong>
                    <asp:Button ID="btn_artı2" runat="server" CssClass="auto-style33" Height="30px" OnClick="btn_artı2_Click1" Text="+" Width="30px" />
                    </strong>
                </td>
                <td><strong>
                    <asp:Button ID="btn_eksi2" runat="server" CssClass="auto-style33" Height="30px" OnClick="btn_eksi2_Click1" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style37"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style21" Width="347px">
        <table class="auto-style38">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="txt_kategoriAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td class="auto-style34">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style36">
                    <asp:Button ID="btn_ekle" runat="server" CssClass="myButton" OnClick="btn_ekle_Click1" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
