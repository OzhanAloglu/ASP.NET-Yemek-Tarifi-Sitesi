<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style10 {
        font-size: x-large;
            background-color: #0000FF;
        }
        .auto-style28 {
            width: 348px;
            float: left;
            height: 39px;
        }
        .auto-style18 {
            width: 29px;
            background-color: #0000FF;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style17 {
            width: 30px;
            background-color: #0000FF;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style16 {
            font-size: large;
            text-align: center;
            background-color: #0000FF;
        }
        .auto-style29 {
            background-color: #CCFF66;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style28">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="btn_artı" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="btn_artı_Click" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="btn_eksi" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="btn_eksi_Click" />
                </td>
                <td class="auto-style16">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21" style="background-color: #CCFF66" >
            <asp:Panel ID="Panel3" runat="server">
                <strong>
                <asp:DataList ID="DataList1" runat="server" Width="347px" Height="16px"  CssClass="auto-style29">
                    <ItemTemplate>
                        <table class="auto-style31">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.jpg" style="text-align: right" />
                                </td>
                                <td style="text-align: right">
                                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" />
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
                </strong>
            </asp:Panel>
</asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style10">
        <table class="auto-style28">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style16">ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

         <asp:Panel ID="Panel5" runat="server" CssClass="auto-style21" style="background-color: #CCFF66" >
            <asp:Panel ID="Panel6" runat="server">
                <strong>
                <asp:DataList ID="DataList2" runat="server" Width="347px" Height="16px"  CssClass="auto-style29">
                    <ItemTemplate>
                        <table class="auto-style31">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.jpg" style="text-align: right" />
                                </td>
                                <td style="text-align: right">
                                   <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" /></a>
                                </td>
                            </tr>
                            
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </strong>
            </asp:Panel>
</asp:Panel>

    </strong>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
