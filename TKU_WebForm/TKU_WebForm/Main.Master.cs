using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }

        protected void LBtn_LoginLogout_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.AuthenticationManager.SignOut();
            }
            this.Response.Redirect("~/Login.aspx");
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
    }
}