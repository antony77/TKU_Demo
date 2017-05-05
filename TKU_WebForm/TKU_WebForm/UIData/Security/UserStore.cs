using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using TKU_WebForm.Core.Data;
using TKU_WebForm.Core.DataSource;
using TKU_WebForm.Models.Security;

namespace TKU_WebForm.UIData.Security
{
    /// <summary>
    /// 用於Microsoft.AspNet.Identity使用者管理之API
    /// </summary>
    /// <typeparam name="TUser">使用者</typeparam>
    public class UserStore : IUserStore<UserModel, long>
    {
        /// <summary>
        /// 非同步建立使用者
        /// </summary>
        /// <param name="user">要新增的使用者</param>
        /// <returns></returns>
        public Task CreateAsync(UserModel user)
        {
            throw new NotSupportedException("無法使用本方法建立使用者");
        }

        /// <summary>
        /// 非同步刪除使用者
        /// </summary>
        /// <param name="user">要刪除的使用者資料</param>
        /// <returns></returns>
        public Task DeleteAsync(UserModel user)
        {
            throw new NotSupportedException("無法使用本方法移除使用者");
        }

        /// <summary>
        /// 非同步由ID取得使用者
        /// </summary>
        /// <param name="userId">使用者ID</param>
        /// <returns>已查詢到的使用者</returns>
        public async Task<UserModel> FindByIdAsync(long userId)
        {

            return await Task.Run(() =>
            {
                Member member = new MemberData().getMember(userId);
                return new UserModel()
                {
                    Id = member.ID,
                    UserName = member.AccountEmail
                };
            });
        }

        /// <summary>
        /// 非同步由使用者名稱取得使用者
        /// </summary>
        /// <param name="email">使用者信箱</param>
        /// <returns>已查詢到的使用者</returns>
        public async Task<UserModel> FindByNameAsync(string email)
        {
            return await Task.Run(() =>
            {
                Member member = new MemberData().getMember(email);
                return new UserModel()
                {
                    Id = member.ID,
                    UserName = member.AccountEmail
                };
            });
        }

        /// <summary>
        /// 非同步更新使用者資料
        /// </summary>
        /// <param name="user">要更新資料的使用者</param>
        /// <returns></returns>
        public Task UpdateAsync(UserModel user)
        {
            throw new NotSupportedException("無法使用本方法更新使用者");
        }

        /// <summary>
        /// 執行與釋放 (Free)、釋放 (Release) 或重設 Unmanaged 資源相關聯之應用程式定義的工作。
        /// </summary>
        public void Dispose()
        {
            //...
        }
    }
}