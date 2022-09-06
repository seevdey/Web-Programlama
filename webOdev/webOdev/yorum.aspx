<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="yorum.aspx.cs" Inherits="webOdev.yorum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h3 {
            background-color: gray;
            text-align: center;
        }

        .lblBaslik {
            background-color: ghostwhite;
            font-size: 25px;
            color: crimson;
        }

        .tarih {
            font-size: xx-small;
        }

        .yorumPanel {
            background-color: burlywood;
        }

        .butonYorum {
            color: darkgoldenrod;
            background-color: khaki;
        }

        .auto-style1 {
            text-align: right;
        }

        .puan{
            font-size: small;
        }

        .Label6{
            font-size:x-small;
            
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblBaslik" runat="server" CssClass="lblBaslik" Text=""></asp:Label>

    <asp:Repeater ID="Repeater4" runat="server">
 
        <ItemTemplate>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelAdSoyad" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelIcerik" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                        <asp:Label ID="LabelTarih" runat="server" CssClass="tarih" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="puan" Text="Puan:"></asp:Label>
                        <asp:Label ID="LabelPuan" runat="server" CssClass="puan" Text='<%# Eval("urunPuanVerme") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="~~~~~~~~~~~~~~~~~~~~~~~~~~~"></asp:Label></td>
                </tr>

            </table>
        </ItemTemplate>

    </asp:Repeater>

    <div class="yorumPanel">
        <h3>YORUM YAPMA PANELİ</h3>

        <table class="stil1">
            <tr>
                <td class="auto-style1"><strong>
                    <asp:Label ID="Label1" runat="server" Text="AdSoyad:"></asp:Label></strong></td>
                <td>
                    <asp:TextBox ID="txtadsoyad" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>
                    <asp:Label ID="Label2" runat="server" Text="Mail Adresi:"></asp:Label></strong></td>

                <td>
                    <asp:TextBox ID="txtmail" runat="server" TextMode="Email" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>
                    <asp:Label ID="Label3" runat="server" Text="Yorum İçeriği: "></asp:Label></strong></td>
                <td>
                    <asp:TextBox ID="txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Puan:</strong></td>
                <td>
                    <asp:TextBox ID="txtpuan" runat="server" Width="71px"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" CssClass="Label6" Text=" (1 ile 10 arasında bir değer giriniz)"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblSonuc" runat="server" Text=""></asp:Label>
                </td>

            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnYorumYap" runat="server" CssClass="butonYorum" Text="YORUM YAP" OnClick="btnYorumYap_Click" /></td>

            </tr>

        </table>
        <br />

    </div>
</asp:Content>
