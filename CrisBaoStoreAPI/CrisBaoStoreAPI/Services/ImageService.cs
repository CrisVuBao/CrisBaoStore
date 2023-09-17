using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using Microsoft.AspNetCore.Mvc;

namespace CrisBaoStoreAPI.Services
{
    public class ImageService
    {
        private readonly Cloudinary _cloudinary;

        public const string CLOUD_NAME = "dfdw0ygfs";
        public const string API_KEY = "583169276429952";
        public const string API_SECRET = "gjGIu-_Lk75_E0C7j55pBltAYuU";

        public ImageService(IConfiguration config)
        {
            Account acc = new Account(CLOUD_NAME, API_KEY, API_SECRET);
            _cloudinary = new Cloudinary(acc);
        }

        public async Task<ImageUploadResult> AddImageAsync(IFormFile file)
        {
            var uploadResult = new ImageUploadResult();

            if (file.Length > 0)
            {
                using var stream = file.OpenReadStream();
                var uploadParams = new ImageUploadParams
                {
                    File = new FileDescription(file.FileName, stream)
                };
                uploadResult = await _cloudinary.UploadAsync(uploadParams);
            }

            return uploadResult;
        }

        public async Task<DeletionResult> DeleteImageAsync(string publicId)
        {
            var deleteParams = new DeletionParams(publicId);
            
            var result = await _cloudinary.DestroyAsync(deleteParams);
            
            return result;
        }
    }
}
