using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TKU_WebForm.Core.DataSource;

namespace TKU_WebForm.Models.ShoppingCart
{
    /// <summary>
    /// 購物車資料
    /// </summary>
    public class ShoppingCartItem
    {
        /// <summary>
        /// 設定或取得產品
        /// </summary>
        public Product Product { set; get; }
        /// <summary>
        /// 設定或取得數量
        /// </summary>
        public int Count { set; get; }
        /// <summary>
        /// 設定或取得單價
        /// </summary>
        public int Price { set; get; }
        /// <summary>
        /// 取得總價
        /// </summary>
        public int Amount
        {
            get
            {
                return this.Price * this.Count;
            }
        }
        /// <summary>
        /// 設定或取得會員資料
        /// </summary>
        public Member Member { set; get; }
    }
}