<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="sikayet.aspx.cs" Inherits="webOdev.sikayet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #lblTarih {
            float: left;
        }

        h3 {
            background-color: bisque;
        }

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            font-size: x-small;
        }
        h2{
            color:olivedrab;
            margin-left: 200px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>ŞİKAYET PANELİ</h2>

    <table class="auto-style5">
                <tr>
                    <td class="auto-style10"><strong>Ad - Soyad:</strong></td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtAdSoyad" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
            <td class="auto-style10"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td class="auto-style10"><strong>Şikayet Konusu:</strong></td>
            <td>
                <asp:TextBox ID="txtSikayetKonu" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td class="auto-style10"><strong>Şikayet İçeriği:</strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtIcerik" runat="server" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
                <tr class="auto-style4">
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Label ID="lblSonuc" runat="server" Text="" ></asp:Label>
                
            </td>
        </tr>
                <tr>
            <td class="auto-style8"></td>
            <td>
                <asp:Button ID="btnGonder" runat="server" Text="GÖNDER" BackColor="#FF9900" style="font-weight: 700" Width="131px" OnClick="btnGonder_Click" />
            </td>
        </tr>
            </table>
       

    <br />
    <div>
        <h3>ŞİKAYETLER</h3>
   
    </div>

    <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
        <HeaderTemplate>
            <table>
                <thead>
                    
                </thead>
        </HeaderTemplate>

        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="lblKonu" runat="server" Text='<%# Eval("sikayetKonu") %>'></asp:Label>
                        <asp:Label ID="lblTarih2" runat="server" Text='<%# Eval("sikayetTarih") %>' CssClass="auto-style6"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Ad-Soyad:"></asp:Label>
                        <asp:Label ID="lblAdSoyad" runat="server" Text='<%# Eval("sikayetKisiAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Şikayet İçerik:"></asp:Label>
                        <asp:Label ID="lblIcerik" runat="server" Text='<%# Eval("sikayetIcerik") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>
