using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TKU_WebForm.Core.Data;
using TKU_WebForm.Core.DataSource;
using TKU_WebForm.Security;
using TKU_WebForm.UIData.Security;

namespace TKU_WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            #region 檢查資料
            MemberData memberData = new MemberData();
            Member member = memberData.getMember(this.Txt_Account.Text);
            if (member == null)
            {
                this.Lbl_Message.Text = "帳號或密碼錯誤!";
                return;
            }
            if (member.Password != this.Txt_Password.Text)
            {
                this.Lbl_Message.Text = "帳號或密碼錯誤!";
                return;
            }
            #endregion
            #region 登入
            UserStore userStore = new UserStore();
            ApplicationUserManager applicationUserManager = new ApplicationUserManager(userStore);
            this.RegisterAsyncTask(new PageAsyncTask(async () =>
            {
                this.AuthenticationManager.SignIn(
                  new AuthenticationProperties()
                  {
                      ExpiresUtc = DateTime.Now.AddYears(1),
                      IsPersistent = true
                  }, await (await userStore.FindByIdAsync(member.ID)).generateUserIdentityAsync(applicationUserManager));
                this.Response.Redirect("~/");
            }));
            #endregion
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