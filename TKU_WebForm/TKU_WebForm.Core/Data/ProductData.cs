using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TKU_WebForm.Core.DataSource;

namespace TKU_WebForm.Core.Data
{
    /// <summary>
    /// 產品資料層
    /// </summary>
    public class ProductData
    {
        /// <summary>
        /// 取得所有商品
        /// </summary>
        /// <returns></returns>
        public List<Product> getAllProduct()
        {
            using (ShoppingDb shoppingDb =new ShoppingDb())
            {
                return shoppingDb.Product.ToList();
            }
        }
        /// <summary>
        /// 取得指定商品
        /// </summary>
        /// <param name="productId">商品 ID</param>
        /// <returns></returns>
        public Product getProduct(long productId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                return shoppingDb.Product.FirstOrDefault(t => t.ID == productId);
            }
        }
    }
}
