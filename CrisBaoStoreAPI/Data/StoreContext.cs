using CrisBaoStoreAPI.Entites;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.Data
{
    public class StoreContext : IdentityDbContext<User>
    {
        // Contructor
        public StoreContext(DbContextOptions options)  : base(options)
        {   
        }

        #region DbContext
        public DbSet<Product> Products { get; set; }
        public DbSet<Basket> Baskets { get; set; }
        #endregion

        protected override void OnModelCreating(ModelBuilder builder) // this is create a entity Role to database
        {
            base.OnModelCreating(builder);

            builder.Entity<IdentityRole>()
                .HasData(
                    new IdentityRole { Name = "Member", NormalizedName = "MEMBER" },
                    new IdentityRole { Name = "Admin", NormalizedName = "ADMIN" }
                );
        }
    }
}
