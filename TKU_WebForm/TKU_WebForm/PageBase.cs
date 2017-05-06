using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TKU_WebForm
{
    /// <summary>
    /// 所有頁面共用的基底型別
    /// </summary>
    public abstract class PageBase : System.Web.UI.Page
    {
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