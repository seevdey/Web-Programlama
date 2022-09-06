<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="tarihi.aspx.cs" Inherits="webOdev.tarihi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            color: darkgoldenrod;
            margin-left: 70px;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        .resimler {
            margin-left: 120px;
            width: 300px;
            height: 160px;
        }

        .tarihiYer {
            margin-left: 180px;
            font-size: 23px;
            color: chocolate;
            background-color: #fff;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
        .aciklama , .adres{
            margin-left: 20px;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>TARİHİ VE TURİSTİK YERLER</h1>
    <asp:Repeater ID="Repeater3" runat="server">
        <ItemTemplate>
            <asp:Label ID="tarihiYerAd" runat="server" CssClass="tarihiYer" Text='<%# Eval("tarihiAd") %>'></asp:Label>
            <br />
            <br />
            <asp:Image ID="resim" runat="server" CssClass="resimler" ImageUrl='<%# Eval("tarihiResim") %>' />
            <br />
            <br />
            <asp:Label ID="tarihiYerAciklama" runat="server" CssClass="aciklama" Text='<%# Eval("tarihiAciklama") %>'></asp:Label>
            <br />
            <br />
            <asp:Label ID="tarihiYerAdres" runat="server" CssClass="adres" Text='<%# Eval("tarihiAdres") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
