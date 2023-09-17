using System.ComponentModel.DataAnnotations;

namespace CrisBaoStoreAPI.DTOs
{
    public class CreateProductDto
    {
        [Required]
        public string Name { get; set; }

        [Required]
        public string Brand { get; set; }

        [Required]
        public string Type { get; set; }

        public string Description { get; set; }

        public IFormFile File { get; set; }

        public long Price { get; set; }

        public long Price_KM { get; set; }

        public int Quantity { get; set; }

        public string ScreenSize { get; set; }

        public string ScreenTechnology { get; set; }

        public string RearCamera { get; set; }

        public string FrontCamera { get; set; }

        public string Weight { get; set; }

        public string Sim { get; set; }

        public string Color { get; set; }

        public string Sound { get; set; }

        public string Chipset { get; set; }

        public string OperatingSystem { get; set; }

        public string Ram { get; set; }

        public string Storage { get; set; }

        public string Battery { get; set; }

        public string ReleaseTime { get; set; }
    }
}
