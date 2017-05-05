using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

namespace TKU_WebForm.Models.Security
{
    public class UserModel : IUser<long>
    {
        /// <summary>
        /// 非同步產生此會員的宣告式
        /// </summary>
        /// <param name="manager">要產生宣告式的使用者管理物件</param>
        /// <returns></returns>
        public async Task<ClaimsIdentity> generateUserIdentityAsync(UserManager<UserModel, long> manager)
        {
            // 注意 authenticationType 必須符合 CookieAuthenticationOptions.AuthenticationType 中定義的項目
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie).ConfigureAwait(false);
            // 在這裡新增自訂使用者宣告
            userIdentity.AddClaim(new Claim("MemberId", this.Id.ToString()));
            return userIdentity;
        }

        /// <summary>
        /// 設定或取得會員ID
        /// </summary>
        public long Id { set; get; }
        /// <summary>
        /// 設定或取得會員帳號
        /// </summary>
        public string UserName { set; get; }

    }
}