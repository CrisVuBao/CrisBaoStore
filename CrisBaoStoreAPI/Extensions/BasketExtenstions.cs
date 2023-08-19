using CrisBaoStoreAPI.DTOs;
using CrisBaoStoreAPI.Entites;
using Microsoft.AspNetCore.Mvc;

namespace CrisBaoStoreAPI.Extensions
{
    public static class BasketExtenstions
    {
        public static BasketDto MapBasketToDto(this Basket basket) // this Basket basket là chính là variable dùng để gọi đến hàm này
        {

                return new BasketDto
                {
                    Id = basket.Id,
                    BuyerId = basket.BuyerId,
                    Items = basket.Items.Select(item => new BasketItemDto
                    {
                        ProductId = item.ProductId,
                        Name = item.Product.Name,
                        Price_KM = item.Product.Price_KM,
                        PictureUrl = item.Product.PictureUrl,
                        Type = item.Product.Type,
                        Brand = item.Product.Brand,
                        Quantity = item.Quantity,
                    }).ToList()
                };

        }
    }
}
