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

        [Required]
        public string Description { get; set; }

        public IFormFile File { get; set; }

        [Required]
        public long Price { get; set; }

        [Required]
        public long Price_KM { get; set; }

        [Required]
        public int Quantity { get; set; }

        [Required]
        public string ScreenSize { get; set; }

        [Required]
        public string ScreenTechnology { get; set; }

        [Required]
        public string RearCamera { get; set; }

        [Required]
        public string FrontCamera { get; set; }

        [Required]
        public string Weight { get; set; }

        [Required]
        public string Sim { get; set; }

        [Required]
        public string Color { get; set; }

        [Required]
        public string Sound { get; set; }

        [Required]
        public string Chipset { get; set; }

        [Required]
        public string OperatingSystem { get; set; }

        [Required]
        public string Ram { get; set; }

        [Required]
        public string Storage { get; set; }

        [Required]
        public string Battery { get; set; }

        [Required]
        public string ReleaseTime { get; set; }
    }
}
