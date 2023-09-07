using Microsoft.AspNetCore.Identity;

namespace CrisBaoStoreAPI.Entites
{
    public class User : IdentityUser<int>
    {
        public UserAddress Address { get; set; }
    }
}
