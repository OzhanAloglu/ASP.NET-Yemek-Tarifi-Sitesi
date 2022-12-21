<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            font-size: large;
            text-align: center;
        }
        .auto-style11 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10" style="background-color: #CCFF66">
        <table class="auto-style28">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="btn_artı" runat="server" CssClass="myButton" Height="30px"  Text="+" Width="30px" OnClick="btn_artı_Click"   />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="btn_eksi" runat="server" CssClass="myButton" Height="30px" Text="-" Width="30px" OnClick="btn_eksi_Click"  />
                </td>
                <td class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;<span class="auto-style11">&nbsp;ONAYSIZ TARİF LİSTESİ</span></strong></td>
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
                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/öneri.png" /></a>
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

        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style10" style="background-color: #CCFF66">
        <table class="auto-style28">
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="BTN_ARTI2" runat="server" CssClass="myButton" Height="30px"  Text="+" Width="30px" OnClick="BTN_ARTI2_Click"    />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="btn_eksi2" runat="server" CssClass="myButton" Height="30px" Text="-" Width="30px" OnClick="btn_eksi2_Click"   />
                </td>
                <td class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;<span class="auto-style11">&nbsp;ONAYLI TARİF LİSTESİ</span></strong></td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
                <strong>
                <asp:DataList ID="DataList2" runat="server" Width="347px" Height="16px"  CssClass="auto-style29">
                    <ItemTemplate>
                        <table class="auto-style31">
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>" ><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/öneri.png" /></a>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
