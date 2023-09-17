using CrisBaoStoreAPI.Entites;

namespace CrisBaoStoreAPI.Extensions
{
    public static class ProductExtensions // phần truy vấn sắp xếp items, tìm sản phẩm
    {
        public static IQueryable<Product> Sort(this IQueryable<Product> queryProduct, string orderBy) // method sắp sản phẩm theo giá
        {
            if (string.IsNullOrWhiteSpace(orderBy)) return queryProduct.OrderBy(p => p.Name);

            queryProduct = orderBy switch
            {
                "price" => queryProduct.OrderBy(p => p.Price_KM),
                "priceDesc" => queryProduct.OrderByDescending(p => p.Price_KM),
                 _ => queryProduct.OrderBy(n => n.Name)
            };

            return queryProduct;
        }

        public static IQueryable<Product> Search(this IQueryable<Product> queryProduct, string searchTerm) 
        {
            if (string.IsNullOrEmpty(searchTerm)) return queryProduct;

            var lowerCaseSearchTerm = searchTerm.Trim().ToLower(); // viết cả chữ thường có thể tìm được sản phẩm có tên chữ hoa

            return queryProduct.Where(p => p.Name.ToLower().Contains(lowerCaseSearchTerm));
        }

        public static IQueryable<Product> Filter(this IQueryable<Product> queryProduct, string brand, string type)
        {
            var brandList = new List<string>();
            var typeList = new List<string>();

            if (!string.IsNullOrEmpty(brand))
            {
                brandList.AddRange(brand.ToLower().Split(",").ToList()); // nếu rỗng hoặc null thì trả về danh sách brand mặc định
            }

            if(!string.IsNullOrEmpty(type)) 
            {
                typeList.AddRange(type.ToLower().Split(",").ToList());
            }

            queryProduct = queryProduct.Where(p => brandList.Count == 0 || brandList.Contains(p.Brand.ToLower()));
            queryProduct = queryProduct.Where(p => typeList.Count == 0 || typeList.Contains(p.Type.ToLower()));

            return queryProduct;
        }
    }
}
