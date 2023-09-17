using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CrisBaoStoreAPI.Data.Migrations
{
    public partial class Updatedbproduct : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 1,
                column: "ConcurrencyStamp",
                value: "daad787b-746c-493c-8af4-7fbd3d5aa357");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 2,
                column: "ConcurrencyStamp",
                value: "78034d04-963b-4017-b146-f359824327d7");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
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
    }
}
