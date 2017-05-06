using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TKU_WebForm.Core.Data;
using TKU_WebForm.Core.DataSource;

namespace TKU_WebForm
{
    public partial class Default : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GridView_AllProducts.DataSource = new ProductData().getAllProduct();
            this.GridView_AllProducts.DataBind();
        }

        protected void Btn_AddToShoppingCart_Click(object sender, EventArgs e)
        {
            int selectedRowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            Product clickedProduct = (this.GridView_AllProducts.DataSource as List<Product>)[selectedRowIndex];
            ShoppingCartData shoppingCartData = new ShoppingCartData();
            TKU_WebForm.Core.DataSource.ShoppingCart targetShoppingCart = shoppingCartData.getShoppingCart(base.CurrentMemberId.Value, clickedProduct.ID);
            if (targetShoppingCart == null)
            {
                //新增購物車
                shoppingCartData.addShoppingCartData(base.CurrentMemberId.Value, clickedProduct.ID);
            }
            else
            {
                //更新購物車
                shoppingCartData.updateShoppingCart(targetShoppingCart.MemberID, targetShoppingCart.ProductID, targetShoppingCart.Count + 1);
            }
        }
    }
}