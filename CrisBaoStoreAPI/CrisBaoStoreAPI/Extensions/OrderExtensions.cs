using CrisBaoStoreAPI.DTOs;
using CrisBaoStoreAPI.Entites.OrderAggregate;
using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.Extensions
{
    public static class OrderExtensions
    {
        public static IQueryable<OrderDto> ProjectOrderToOrderDto(this IQueryable<Order> query)
        {
            return query
                .Select(order => new OrderDto
                {
                    Id = order.Id,
                    BuyerId = order.BuyerId,
                    OrderDate = order.OrderDate,
                    ShippingAddress = order.ShippingAddress,
                    DeliveryFee = order.DeliveryFee,
                    Subtotal = order.Subtotal,
                    OrderStatus = order.OrderStatus.ToString(),
                    Total = order.GetTotal(),
                    OrderItems = order.OrderItems.Select(item => new OrderItemDto
                    {
                        ProductId = item.ItemOrdered.ProductId,
                        Name = item.ItemOrdered.Name,
                        PictureUrl = item.ItemOrdered.PictureUrl,
                        Price_KM = item.Price_KM,
                        Quantity = item.Quantity
                    }).ToList()
                }).AsNoTracking();
        }
    }
}
