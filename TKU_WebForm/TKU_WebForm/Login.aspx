<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TKU_WebForm.Login" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <label for="exampleInputEmail1">帳號</label>
        <asp:TextBox ID="Txt_Account" runat="server" CssClass="form-control" Placeholder="Email"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">密碼</label>
        <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Label runat="server" ID="Lbl_Message"></asp:Label>
    <br />
    <asp:Button runat="server" ID="Btn_Login" Text="Login" CssClass="btn btn-info" OnClick="Btn_Login_Click" />
</asp:Content>
