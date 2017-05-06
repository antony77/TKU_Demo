<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TKU_WebForm.Default" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView_AllProducts" runat="server" DataKeyNames="ID" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Description" HeaderText="品名" ItemStyle-Width="80px" />
            <asp:BoundField DataField="Count" HeaderText="剩餘數量" ItemStyle-Width="80px" />
            <asp:BoundField DataField="Price" HeaderText="價格" DataFormatString="{0:#,##0}" ItemStyle-Width="80px" />
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="購物車"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Button runat="server" CssClass="btn btn-default" Text="加入購物車" ID="Btn_AddToShoppingCart" OnClick="Btn_AddToShoppingCart_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
</asp:Content>
