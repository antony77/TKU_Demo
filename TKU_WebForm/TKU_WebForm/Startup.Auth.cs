using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TKU_WebForm.Models.Security;
using TKU_WebForm.Security;

namespace TKU_WebForm
{
    public partial class Startup
    {
        // 如需設定驗證的詳細資訊，請瀏覽 http://go.microsoft.com/fwlink/?LinkId=301864
        public void ConfigureAuth(IAppBuilder app)
        {
            //// 設定資料庫內容和使用者管理員以針對每個要求使用單一執行個體
            //app.CreatePerOwinContext(ApplicationDbContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);

            // 讓應用程式使用 Cookie 儲存已登入使用者的資訊
            // 並使用 Cookie 暫時儲存使用者利用協力廠商登入提供者登入的相關資訊；
            // 在 Cookie 中設定簽章
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                AuthenticationMode = Microsoft.Owin.Security.AuthenticationMode.Active,
                LoginPath = new PathString("/Login.aspx"),
                Provider = new CookieAuthenticationProvider
                {
                    OnValidateIdentity = SecurityStampValidator.OnValidateIdentity<ApplicationUserManager, UserModel, long>(
                        validateInterval: TimeSpan.FromDays(365),
                        regenerateIdentityCallback: (manager, user) => user.generateUserIdentityAsync(manager),
                        getUserIdCallback: claimsIdentity => Int64.Parse(claimsIdentity.Claims.First(t => t.Type == "MemberId").Value)),
                    OnResponseSignIn = (signInContext) =>
                    {

                    }
                },
                ExpireTimeSpan = TimeSpan.FromDays(7),
                CookieName = "TKU_WebForm.Application.Identity"
            });

            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);
            // 註銷下列各行以啟用利用協力廠商登入提供者登入
            //app.UseMicrosoftAccountAuthentication(
            //    clientId: "",
            //    clientSecret: "");

            //app.UseTwitterAuthentication(
            //   consumerKey: "",
            //   consumerSecret: "");

            //FacebookAuthenticationOptions facebookAuthenticationOptions = new FacebookAuthenticationOptions();
            //facebookAuthenticationOptions.AppId = "";
            //facebookAuthenticationOptions.AppSecret ="";
            //facebookAuthenticationOptions.AuthenticationMode = Microsoft.Owin.Security.AuthenticationMode.Passive;
            //facebookAuthenticationOptions.Scope.Add("email");
            //facebookAuthenticationOptions.Scope.Add("public_profile");
            //app.UseFacebookAuthentication(facebookAuthenticationOptions);

            //app.UseGoogleAuthentication(new GoogleOAuth2AuthenticationOptions()
            //{
            //    ClientId = "",
            //    ClientSecret = ""
            //});
        }
    }
}