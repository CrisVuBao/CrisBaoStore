using AutoMapper;
using CrisBaoStoreAPI.Data;
using CrisBaoStoreAPI.DTOs;
using CrisBaoStoreAPI.Entites;
using CrisBaoStoreAPI.Extensions;
using CrisBaoStoreAPI.RequestHelpers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly StoreContext _context;
        private readonly IMapper _mapper;

        public ProductController(StoreContext context, IMapper mapper) 
        {
            _context = context;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<ActionResult<PagedList<Product>>> GetAllProduct([FromQuery] ProductParams productParams)
        {
            var query = _context.Products
                .Sort(productParams.OrderBy)
                .Search(productParams.SearchTerm)
                .Filter(productParams.Brands, productParams.Types)
                .AsQueryable();

            var products = await PagedList<Product>.ToPageList(query, productParams.PageNumber, productParams.PageSize);

            Response.AddPaginationHeader(products.MetaData);

            return products;
        }

        [HttpGet("filters")]
        public async Task<IActionResult> GetFilter()
        {
            var brands = await _context.Products.Select(p => p.Brand).Distinct().ToListAsync();
            var types = await _context.Products.Select(p => p.Type).Distinct().ToListAsync();

            return Ok(new {brands, types});
        }

        [HttpGet("id", Name = "GetProduct")]
        public async Task<ActionResult<Product>> GetProduct(int id)
        {
            var product = await _context.Products.FindAsync(id);

            if (product == null) return NotFound();

            return product;
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult<Product>> CreateProduct(CreateProductDto productDto)
        {
            var product = _mapper.Map<Product>(productDto);
            _context.Products.Add(product);

            var result = await _context.SaveChangesAsync() > 0;

            if (result) return CreatedAtRoute("GetProduct", new { Id = product.Id }, product);

            return BadRequest(new ProblemDetails { Title = "Problem creating new product"});
        }

        [Authorize(Roles = "Admin")]
        [HttpPut]
        public async Task<ActionResult> UpdateProduct(UpdateProductDto productDto)
        {
            var product = await _context.Products.FindAsync(productDto.Id);

            if (product == null) return NotFound();

            _mapper.Map(productDto, product);

            var result = await _context.SaveChangesAsync() > 0;
            
            if (result) return NoContent();

            return BadRequest(new ProblemDetails { Title = "Problem updating product"});
        }

    }
}
