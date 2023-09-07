using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CrisBaoStoreAPI.Data.Migrations
{
    public partial class DbAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 1,
                column: "ConcurrencyStamp",
                value: "8fc48e5c-8b96-45a1-b449-902abd5167b6");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 2,
                column: "ConcurrencyStamp",
                value: "29a702f8-bafe-4c14-9526-319863d34864");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 1,
                column: "ConcurrencyStamp",
                value: "b2b7dcd9-ff6a-4a0c-a55b-a86d72060619");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: 2,
                column: "ConcurrencyStamp",
                value: "1482b78f-b8b9-4241-877b-a314c6be8af3");
        }
    }
}
