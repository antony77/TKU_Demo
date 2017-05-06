using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TKU_WebForm.Core.Data;

namespace TKU_WebForm
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.LBtn_LoginLogout.Text = HttpContext.Current.User.Identity.IsAuthenticated ? "登出" : "登入";
            if (!this.CurrentMemberId.HasValue)
            {
                this.LBtn_ShoppingCart.Text = "登入後使用購物車";
            }
            else
            {
                ShoppingCartData shoppingCartData = new ShoppingCartData();
                this.LBtn_ShoppingCart.Text = $"購物車 <span class=\"badge\">{shoppingCartData.getShoppingCart(this.CurrentMemberId.Value).Count}</span>";
            }
        }

        protected void LBtn_LoginLogout_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.AuthenticationManager.SignOut();
            }
            this.Response.Redirect("~/Login.aspx");
        }
        protected void LBtn_ShoppingCart_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/ShoppingCart.aspx");
        }
        /// <summary>
        /// 取得目前網站OWIN的認證管理員
        /// </summary>
        protected Microsoft.Owin.Security.IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.Current.GetOwinContext().Authentication;
            }
        }
        /// <summary>
        /// 取得目前的會員 ID，若無登入則回傳 null
        /// </summary>
        protected long? CurrentMemberId
        {
            get
            {
                if (!HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    return null;
                }
                return Convert.ToInt64((HttpContext.Current.User.Identity as System.Security.Claims.ClaimsIdentity).FindFirst("MemberId").Value);
            }
        }

    }
}