using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.Entites.OrderAggregate
{
    [Owned] // EF sẽ tự gộp bảng ShippingAddress vào trong Address, để thành 1 bảng
    public class ShippingAddress : Address
    {

    }
}
