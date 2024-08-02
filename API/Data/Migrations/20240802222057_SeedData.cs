using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace API.Data.Migrations
{
    /// <inheritdoc />
    public partial class SeedData : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "d8222824-6eab-4578-8e5d-c09f9906cc76");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "e3fa531b-4eee-4110-a695-2250f51e8766");

            migrationBuilder.RenameColumn(
                name: "BuyerID",
                table: "Baskets",
                newName: "BuyerId");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "6c617e2e-ca45-4cdd-9280-84a52900984b", null, "Admin", "ADMIN" },
                    { "cc04654b-7337-4f78-8e6a-4bb5f55d05b1", null, "Member", "MEMBER" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "6c617e2e-ca45-4cdd-9280-84a52900984b");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "cc04654b-7337-4f78-8e6a-4bb5f55d05b1");

            migrationBuilder.RenameColumn(
                name: "BuyerId",
                table: "Baskets",
                newName: "BuyerID");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "d8222824-6eab-4578-8e5d-c09f9906cc76", null, "Admin", "ADMIN" },
                    { "e3fa531b-4eee-4110-a695-2250f51e8766", null, "Member", "MEMBER" }
                });
        }
    }
}
