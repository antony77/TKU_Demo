<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="TKU_WebForm.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button runat="server" ID="Btn_ClearShoppingCart" Text="清空購物車" CssClass="btn btn-danger" OnClick="Btn_ClearShoppingCart_Click" />
    <hr />
    <asp:GridView ID="GridView_ShoppingCart" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="false" OnDataBound="GridView_ShoppingCart_DataBound">
        <Columns>
            <asp:BoundField HeaderText="商品名稱" DataField="Product.Description" ItemStyle-Width="100px" />
            <asp:BoundField HeaderText="數量" DataField="Count" ItemStyle-Width="70px" />
            <asp:BoundField HeaderText="單價" DataField="Price" ItemStyle-Width="100px" />
            <asp:BoundField HeaderText="總價" DataField="Amount" ItemStyle-Width="100px" />
            <asp:TemplateField>
                <HeaderTemplate>操作</HeaderTemplate>
                <ItemTemplate>
                    <asp:Button runat="server" ID="Btn_Substract" CssClass="btn btn-warning" Text="-" OnClick="Btn_Substract_Click" />
                    <asp:Button runat="server" ID="Btn_Add" CssClass="btn btn-success" Text="+" OnClick="Btn_Add_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <hr />
    <div class="row text-right">
        <span>總價:</span>
        <asp:Label runat="server" ID="Lbl_TotalAmount"></asp:Label>
    </div>
</asp:Content>
