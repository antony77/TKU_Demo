using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TKU_WebForm.Core.Data;
using TKU_WebForm.Models.ShoppingCart;

namespace TKU_WebForm
{
    public partial class ShoppingCart : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GridView_ShoppingCart.DataSource = this.ShoppingCartItems;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.GridView_ShoppingCart.DataBind();
        }
        protected void Btn_Substract_Click(object sender, EventArgs e)
        {
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            ShoppingCartItem shoppingCartItem = (this.GridView_ShoppingCart.DataSource as List<ShoppingCartItem>)[rowIndex];
            if (shoppingCartItem.Count <= 1)
            {
                new ShoppingCartData().removeShoppingCart(shoppingCartItem.Member.ID, shoppingCartItem.Product.ID);
            }
            else
            {
                new ShoppingCartData().updateShoppingCart(shoppingCartItem.Member.ID, shoppingCartItem.Product.ID, shoppingCartItem.Count - 1);

            }
            this.GridView_ShoppingCart.DataSource = this.ShoppingCartItems;
        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            ShoppingCartItem shoppingCartItem = (this.GridView_ShoppingCart.DataSource as List<ShoppingCartItem>)[rowIndex];
            new ShoppingCartData().updateShoppingCart(shoppingCartItem.Member.ID, shoppingCartItem.Product.ID, shoppingCartItem.Count + 1);
            this.GridView_ShoppingCart.DataSource = this.ShoppingCartItems;
        }
        protected void Btn_ClearShoppingCart_Click(object sender, EventArgs e)
        {
            new ShoppingCartData().removeShoppingCart(base.CurrentMemberId.Value);
            this.GridView_ShoppingCart.DataSource = this.ShoppingCartItems;
        }
        protected void GridView_ShoppingCart_DataBound(object sender, EventArgs e)
        {
            this.Lbl_TotalAmount.Text = (this.GridView_ShoppingCart.DataSource as List<ShoppingCartItem>)
                .Sum(t => t.Amount)
                .ToString("#,##0");
        }
        /// <summary>
        /// 取得目前會員的購物車清單
        /// </summary>
        private List<ShoppingCartItem> ShoppingCartItems =>
            new ShoppingCartData()
                .getShoppingCart(base.CurrentMemberId.Value)
                .Select(t => new ShoppingCartItem()
                {
                    Count = t.Count,
                    Member = new MemberData().getMember(base.CurrentMemberId.Value),
                    Price = t.Price,
                    Product = new ProductData().getProduct(t.ProductID)
                }).ToList();


    }
}