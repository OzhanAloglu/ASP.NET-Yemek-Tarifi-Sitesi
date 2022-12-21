<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GününYemeğiAdmin.aspx.cs" Inherits="YemekTarifiSitesi.GününYemeğiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
            font-size: x-large;
            background-color: #CCFF66;
        }
        .auto-style13 {
            background-color: #CCFF66;
        }
        .auto-style17 {
            height: 21px;
        }
        .auto-style19 {
            width: 52px;
            background-color: #CCFF66;
        }
        .auto-style20 {
            width: 49px;
            background-color: #CCFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="BTN_aRTI" runat="server" CssClass="myButton" OnClick="BTN_aRTI_Click" Text="+" Width="40px" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="btn_eksi" runat="server" CssClass="myButton" OnClick="btn_eksi_Click" Text="-" Width="40px" />
                </td>
                <td class="auto-style12"><strong>Yemek Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21" >
        <asp:DataList ID="DataList1" runat="server" Width="347px" Height="16px" CssClass="auto-style13">
            <ItemTemplate>
              
                <table class="auto-style31">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td>
                           <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/12.png" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"></td>
                        <td style="text-align: right" class="auto-style17"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
