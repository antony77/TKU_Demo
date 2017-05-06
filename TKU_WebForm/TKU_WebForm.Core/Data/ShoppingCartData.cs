using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TKU_WebForm.Core.DataSource;

namespace TKU_WebForm.Core.Data
{
    /// <summary>
    /// 購物車資料層
    /// </summary>
    public class ShoppingCartData
    {
        /// <summary>
        /// 增加商品至會員的購物車
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        /// <param name="productId">商品 ID</param>
        public void addShoppingCartData(long memberId, long productId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                Product product = shoppingDb.Product.First(t => t.ID == productId);
                shoppingDb.ShoppingCart.Add(new ShoppingCart()
                {
                    MemberID = memberId,
                    ProductID = productId,
                    Count = 1,
                    CreatedDate = DateTime.Now,
                    Price = product.Price,
                    UpdatedDate = DateTime.Now
                });
                shoppingDb.SaveChanges();
            }
        }
        /// <summary>
        /// 取得指定會員的購物車資料
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        /// <returns></returns>
        public List<ShoppingCart> getShoppingCart(long memberId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                return shoppingDb.ShoppingCart.Where(t => t.MemberID == memberId).ToList();
            }
        }
        /// <summary>
        /// 取得指定會員的指定商品購物車資料
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        /// <returns></returns>
        public ShoppingCart getShoppingCart(long memberId, long productId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                return shoppingDb.ShoppingCart.FirstOrDefault(t => t.MemberID == memberId && t.ProductID == productId);
            }
        }
        /// <summary>
        /// 移除指定的購物車資料
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        /// <param name="productId">商品 ID</param>
        public void removeShoppingCart(long memberId, long productId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                shoppingDb.ShoppingCart.Where(t => t.MemberID == memberId && t.ProductID == productId)
                    .ToList()
                    .ForEach(t => shoppingDb.ShoppingCart.Remove(t));
                shoppingDb.SaveChanges();
            }
        }
        /// <summary>
        /// 清空指定會員的購物車資料
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        public void removeShoppingCart(long memberId)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                shoppingDb.ShoppingCart.Where(t => t.MemberID == memberId)
                    .ToList()
                    .ForEach(t => shoppingDb.ShoppingCart.Remove(t));
                shoppingDb.SaveChanges();
            }
        }
        /// <summary>
        /// 更新指定的購物車數量
        /// </summary>
        /// <param name="memberId">會員 ID</param>
        /// <param name="productId">商品 ID</param>
        /// <param name="newCount">新數量</param>
        public void updateShoppingCart(long memberId, long productId, int newCount)
        {
            using (ShoppingDb shoppingDb = new ShoppingDb())
            {
                ShoppingCart shoppingCart = shoppingDb.ShoppingCart.FirstOrDefault(t => t.MemberID == memberId && t.ProductID == productId);
                shoppingCart.UpdatedDate = DateTime.Now;
                shoppingCart.Count = newCount;
                shoppingDb.SaveChanges();
            }
        }
    }
}
