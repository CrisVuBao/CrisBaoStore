using CrisBaoStoreAPI.Entites;
using CrisBaoStoreAPI.Entites.OrderAggregate;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CrisBaoStoreAPI.Data
{
    public class StoreContext : IdentityDbContext<User, Role, int>
    {
        // Contructor
        public StoreContext(DbContextOptions options)  : base(options)
        {   
        }

        #region DbContext
        public DbSet<Product> Products { get; set; }
        public DbSet<Basket> Baskets { get; set; }
        public DbSet<Order> Orders { get; set; }
        #endregion

        protected override void OnModelCreating(ModelBuilder builder) // this is create a entity Role to database
        {
            base.OnModelCreating(builder);

            builder.Entity<User>()
                .HasOne(a => a.Address)
                .WithOne()
                .HasForeignKey<UserAddress>(a => a.Id)
                .OnDelete(DeleteBehavior.Cascade); // nếu xóa một đối tượng trong User , thì đối tượng trong UserAddress cũng sẽ bị xóa (hành vi xóa đệ quy, gọi là "Cascade")

            builder.Entity<Role>()
                .HasData(
                    new Role { Id = 1, Name = "Member", NormalizedName = "MEMBER" },
                    new Role { Id = 2, Name = "Admin", NormalizedName = "ADMIN" }
                );
        }
    }
}
