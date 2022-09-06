<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="webOdev.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        h1{
            color:cadetblue;
            margin-left: 40px;
        }
        #Label2, #Label3, #Label4, #Label5{
            margin-left:15px;
        }

        .label3{
            color: black;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="h1"><h1>İLETİŞİM</h1></asp:Label>

    <i class="fas fa-map-marker-alt"></i>
    <asp:Label ID="Label2" runat="server" Text="Label">Adres: </asp:Label>

    <span>Alipaşa, Gaziosmanpaşa Blv. No:184, 60100 Merkez/Tokat Merkez/Tokat </span>
    <br />
    <br />

    <i class="far fa-envelope"></i>
    <asp:Label ID="Label3" runat="server" Text="Label">Email: </asp:Label>
    <span class="label3"> <a href="mailto:beyazmasa@tokat.bel.tr">beyazmasa@tokat.bel.tr</a></span>
    <br />
    <br />

    <i class="fas fa-phone"></i>
    <asp:Label ID="Label4" runat="server" Text="Label">Telefon: </asp:Label>
    <span>0356 2142220 - 0850 8850460</span>
    <br />
    <br />
    <i class="fas fa-fax"></i>
    <asp:Label ID="Label5" runat="server" Text="Label">Fax: </asp:Label>
    <span>0356 2120707 </span>
</asp:Content>
