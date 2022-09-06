<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="piknik.aspx.cs" Inherits="webOdev.piknik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            text-align: center;
            color: midnightblue;
        }

        .piknikYer{
            font-family: 'Adobe Devanagari';
            font-size: 30px;
            color: peru;
            background-color:ghostwhite;
        }
        .images{
            margin-left: 120px;
            width: 350px;
            height: 200px;
        }
        .adres{
            font-family: 'Adobe Devanagari';
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>PIKNIK ALANLARI</h1>
    <asp:Repeater ID="Repeater8" runat="server">
        <ItemTemplate>
            <asp:Label ID="piknikYerAd" runat="server" CssClass="piknikYer" Text='<%# Eval("piknikAd") %>'></asp:Label>
            <br />
            <br />
            <asp:Image ID="image" runat="server" CssClass="images" ImageUrl='<%# Eval("piknikResim") %>' />
            <br />
            <br />
            <asp:Label ID="piknikAdres" runat="server" CssClass="adres" Text='<%# Eval("piknikAdres") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
