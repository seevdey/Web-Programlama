<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="anket.aspx.cs" Inherits="webOdev.anket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <legend><b>SORU-1</b></legend>
        <p>soru metni1</p>
        <asp:RadioButton ID="rb1" Text="Evet" runat="server" GroupName="soru1" />
        <asp:RadioButton ID="rb2" Text="Hayır" runat="server" GroupName="soru1" />
        <br />
        <asp:Label ID="lblSonuc" runat="server" Text="" Visible="true"></asp:Label>
    </fieldset>

    <br />
    <br />

    <fieldset>
        <legend><b>SORU-2</b></legend>
        <p>soru metni2</p>
        <asp:CheckBox ID="cb1" Text="seçenek1" runat="server" ></asp:CheckBox>
        <asp:CheckBox ID="cb2" Text="seçenek2" runat="server"></asp:CheckBox>
        <br />
        <asp:Label ID="lblSonuc2" runat="server" Text="" Visible="true"></asp:Label>
    </fieldset>
    
    <br />
    <br />

    <fieldset>
        <legend><b>SORU-3</b></legend>
        <p>soru metni3</p>
        <asp:DropDownList ID="DropDownList1" runat="server">
             
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblSonuc3" runat="server" Text="" Visible="true"></asp:Label>
    </fieldset>


    <p>4-SORU METNİ </p>
    <p>5-SORU METNİ </p>

    <asp:Button ID="Button1" runat="server" Text="GÖNDER" OnClick="Button1_Click" />
</asp:Content>
