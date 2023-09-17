using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CrisBaoStoreAPI.Data.Migrations
{
    public partial class UpdateDB : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Price",
                table: "OrderItem",
                newName: "Price_KM");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 1,
                column: "ConcurrencyStamp",
                value: "9579f2e9-f22a-4fad-b0f6-511f39231834");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 2,
                column: "ConcurrencyStamp",
                value: "6da3e98a-16fd-44da-b653-cf1ccfc38957");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Price_KM",
                table: "OrderItem",
                newName: "Price");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 1,
                column: "ConcurrencyStamp",
                value: "1f847d58-ef42-48d1-90bd-20596ff28a5f");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 2,
                column: "ConcurrencyStamp",
                value: "a3570844-398d-4a51-b37c-8a2cd3fb41c5");
        }
    }
}
