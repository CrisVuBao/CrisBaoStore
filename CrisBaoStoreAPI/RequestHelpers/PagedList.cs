using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.RequestHelpers
{
    public class PagedList<T> : List<T>
    {
        public MetaData MetaData { get; set; }

        // Contructor
        public PagedList(List<T> items, int count, int pageNumber, int pageSize)
        {
            MetaData = new MetaData // tạo một MetaData mới để lấy các thuộc tính của MetaData
            {
                TotalCount = count,
                PageSize = pageSize,
                CurrentPage = pageNumber,
                TotalPage = (int)Math.Ceiling(count / (double)pageSize) // ceiling chỉ hỗ trợ float và double, vì đây là method làm tròn số từ số thực thành số nguyên
            };
            AddRange(items);
        }

        public static async Task<PagedList<T>> ToPageList(IQueryable<T> query, int pageNumber, int pageSize)
        {
            var count = await query.CountAsync();
            var items = await query.Skip((pageNumber - 1) * pageSize).Take(pageSize).ToListAsync(); // method muốn bỏ qua phần tử thứ bao nhiêu trong mảng
            return new PagedList<T>(items, count, pageNumber, pageSize); // trả ra items, số, số trang, số items trong 1 trang khi truy vấn
        }
    }
}
