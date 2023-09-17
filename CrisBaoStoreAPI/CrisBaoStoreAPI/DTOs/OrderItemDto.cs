namespace CrisBaoStoreAPI.DTOs
{
    public class OrderItemDto
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public string PictureUrl { get; set; }
        public long Price_KM { get; set; }
        public int Quantity { get; set; }
    }
}
