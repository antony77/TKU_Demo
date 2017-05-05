<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TKU_WebForm.Login" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    帳號:
    <asp:TextBox ID="Txt_Account" runat="server"></asp:TextBox>
    <br />
    密碼:
    <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label runat="server" ID="Lbl_Message"></asp:Label>
    <br />
    <asp:Button runat="server" ID="Btn_Login" Text="Login" OnClick="Btn_Login_Click" />
</asp:Content>
