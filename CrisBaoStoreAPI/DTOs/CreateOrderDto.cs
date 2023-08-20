﻿using CrisBaoStoreAPI.Entites.OrderAggregate;

namespace CrisBaoStoreAPI.DTOs
{
    public class CreateOrderDto
    {
        public bool SaveAddress { get; set; }
        public ShippingAddress ShippingAddress { get; set; }
    }
}
