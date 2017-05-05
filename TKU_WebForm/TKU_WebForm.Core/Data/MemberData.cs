using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TKU_WebForm.Core.DataSource;

namespace TKU_WebForm.Core.Data
{
    /// <summary>
    /// 會員資料
    /// </summary>
    public class MemberData
    {
        /// <summary>
        /// 依照 email 取得會員，若無資料則回傳 <c>null</c> 參考
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        public Member getMember(string email)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                return shoppingDb.Member.FirstOrDefault(t => t.AccountEmail == email);
            }
        }
        /// <summary>
        /// 依照 id 取得會員，若無資料則回傳 <c>null</c> 參考
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Member getMember(long id)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                return shoppingDb.Member.FirstOrDefault(t => t.ID == id);
            }
        }
    }
}
