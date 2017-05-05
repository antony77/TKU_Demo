using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TKU_WebForm.Models.Security;
using TKU_WebForm.UIData.Security;

namespace TKU_WebForm.Security
{
    public class ApplicationUserManager : UserManager<UserModel, long>
    {
        public ApplicationUserManager(IUserStore<UserModel, long> store)
            : base(store)
        {
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            var manager = new ApplicationUserManager(new UserStore());
            //var manager = new ApplicationUserManager(new UserStore<UserModel>(context.Get<ApplicationDbContext>()));
            // 設定使用者名稱的驗證邏輯
            manager.UserValidator = new UserValidator<UserModel, long>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };
            // 設定密碼的驗證邏輯
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };
            // 註冊雙因素驗證提供者。此應用程式使用手機和電子郵件接收驗證碼以驗證使用者
            // 您可以在這裡寫下自己的提供者和外掛程式。
            manager.RegisterTwoFactorProvider("PhoneCode", new PhoneNumberTokenProvider<UserModel, long>
            {
                MessageFormat = "您的安全碼: {0}"
            });
            manager.RegisterTwoFactorProvider("EmailCode", new EmailTokenProvider<UserModel, long>
            {
                Subject = "安全碼",
                BodyFormat = "您的安全碼: {0}"
            });
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider = new DataProtectorTokenProvider<UserModel, long>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }
    }
}