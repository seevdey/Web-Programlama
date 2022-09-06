<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="urun.aspx.cs" Inherits="webOdev.urun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            color: orangered;
            text-align: center;
            font-family: Cambria;
        }

        h2 {
            color: indianred;
            text-align: center;
            font-family: Cambria;
        }

        #btnSiparisOlustur {
            color: #fff;
            background-color: goldenrod;
            font-size: 15px;
            width: 144px;
        }

        .lbl1 {
            font-size: 20px;
            text-decoration: none;
            color: darkgreen;
        }

        .tb5 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
        }

        .tb6{
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 260px;
        }

        .images {
            width: 170px;
            height: 120px;
            padding: 15px;
        }

        .yazi {
            font-size: 25px;
            color: firebrick;
        }

        .yazi2 {
            padding-left: 15px;
        }

        .imageButton {
            width: 40px;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: right;
        }

        .auto-style3 {
            text-align: left;
        }

        .auto-style4 {
            font-weight: bold;
        }

        .modelNo {
            font-size: 16px;
        }

        .basliklar {
            font-size: 25px;
            color: firebrick;
        }
        .auto-style5 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>ÜRÜNLER VE SİPARİŞ SAYFASI</h1>


    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate>
            <table>

                <tr class="yazi">
                    <td>ÜRÜN AD</td>
                    <td class="yazi2">ÜRÜN GÖRSEL</td>
                    <td>BEĞENİ</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td>
                    <a href="yorum.aspx?urunID=<%# Eval("urunID")  %>">
                        <asp:Label ID="Label1" runat="server" CssClass="lbl1" Text='<%# Eval("urunAd")%>'></asp:Label></a>
                    <asp:Label ID="lblurunID" runat="server" Visible="false" Text='<%# Eval("urunID")%>'></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" CssClass="images" ImageUrl='<%# Eval("urunResim") %>' /></td>

                <td>
                    <asp:ImageButton ID="likeButton" CssClass="imageButton" runat="server" ImageUrl="~/logo/like.png" /></td>
                <td>
                    <asp:Label ID="lblBegeni" runat="server" CssClass="modelNo" Text='<%# Eval("urunBegeni")%>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="modelNo" Text="kişi bunu beğendi"></asp:Label>
                </td>
            </tr>

        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>

    <h5>~Ürün yorumlarına ulaşmak ve ürüne yorum yapmak için ürün isimlerinin üstüne tıklayın </h5>

    <h2>SİPARİŞ PANELİ</h2>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <strong>
                    <asp:Label ID="Label2" runat="server" Text="Sipariş Edilecek Ürün:"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtUrun" runat="server" Visible="false" Width="0px" Height="0px" CssClass="auto-style5"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" CssClass="tb6" DataTextField="urunAd" DataValueField="urunAd">
                </asp:DropDownList>
                </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [urunAd] FROM [Urun_Tablo]"></asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <strong>
                    <asp:Label ID="Label3" runat="server" Text="Ad-Soyad:"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtSiparisAdSoyad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <strong>
                    <asp:Label ID="Label4" runat="server" Text="Mail:"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtSiparisMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <strong>
                    <asp:Label ID="Label5" runat="server" Text="Sipariş Adres:"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtSiparisAdres" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblSonuc" runat="server" Text="" ></asp:Label>

            </td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style3">
                <strong>
                    <asp:Button ID="btnSiparisOlustur" runat="server" Text="SİPARİŞ OLUŞTUR" OnClick="btnSiparisOlustur_Click" CssClass="auto-style4" /></strong></td>
        </tr>
    </table>
</asp:Content>
