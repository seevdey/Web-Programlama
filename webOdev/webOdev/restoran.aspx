<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="restoran.aspx.cs" Inherits="webOdev.restoran" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            text-align: center;
            color: indianred;
            background-color: honeydew;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .resim {
            margin-left: 130px;
            width: 300px;
            height: 160px;
        }

        .adres {
            margin-left: 15px;
            font-size: 14px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .restoranAd {
            margin-left: 15px;
            font-size: 20px;
            color: darkgoldenrod;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>MEKANLAR</h1>
    <asp:Repeater ID="Repeater6" runat="server">
        <ItemTemplate>
            <asp:Label ID="restoranAd" runat="server" CssClass="restoranAd" Text='<%# Eval("restoranAd") %>'></asp:Label>
            <br />
            <br />
            <asp:Image ID="resim" runat="server" CssClass="resim" ImageUrl='<%# Eval("restoranResim") %>' />
            <br />
            <br />
            <asp:Label ID="restoranAdres" runat="server" CssClass="adres" Text='<%# Eval("restoranAdres") %>'></asp:Label>
            <br />
            <br />

        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
