namespace CrisBaoStoreAPI.Entites.OrderAggregate
{
    public class OrderItem
    {
        public int Id { get; set; }
        public ProductItemOrdered ItemOrdered { get; set; }
        public long Price_KM { get; set; }
        public int Quantity { get; set; }
    }
}
