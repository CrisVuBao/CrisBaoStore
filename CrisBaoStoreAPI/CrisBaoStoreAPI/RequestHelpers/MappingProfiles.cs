using AutoMapper;
using CrisBaoStoreAPI.DTOs;
using CrisBaoStoreAPI.Entites;

namespace CrisBaoStoreAPI.RequestHelpers
{
    public class MappingProfiles : Profile
    {
        public MappingProfiles() 
        {
            CreateMap<CreateProductDto, Product>();
            CreateMap<UpdateProductDto, Product>();
        }
    }
}
