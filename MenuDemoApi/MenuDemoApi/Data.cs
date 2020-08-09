using System;
using Bogus;

namespace MenuDemoApi
{
    public static class Restaurants
    {
        private static readonly string[] MenuNames = {"Breakfast", "Lunch", "Dinner"};
        private static readonly string[] MenuIcons = {"sunrise.fill", "sun.max.fill", "sunset.fill"};
        private static readonly string[][] MenuAvailabilities =
        {
            new [] { "6am - 11am", "5am - 11:30am", "7am - 12pm" },
            new [] { "11am - 3pm", "11:30am - 2pm", "11am - 4pm" },
            new [] { "6pm - 10pm", "5pm - 9pm", "7pm - 11pm" }
        };

        private static int _menuIndex = 0;
        
        private static Faker<MenuData> MenuDataFaker => new Faker<MenuData>()
            .RuleFor(m => m.Description, f => f.Lorem.Sentence())
            .RuleFor(m => m.Id, Guid.NewGuid)
            .RuleFor(m => m.Name, () => MenuNames[_menuIndex])
            .RuleFor(m => m.Icon, () => MenuIcons[_menuIndex])
            .RuleFor(m => m.Availability, f => MenuAvailabilities[_menuIndex][f.Random.Number(0, 2)])
            .RuleFor(m => m.PdfUrl, f => $"https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/Generic{MenuNames[_menuIndex]}Menu.pdf")
            .FinishWith((f, m) =>
            {
                _menuIndex = (_menuIndex + 1) % 3;
            });
        
        public static readonly RestaurantData[] All = new Faker<RestaurantData>()
            .RuleFor(r => r.Name, f => f.Company.CompanyName(1))
            .RuleFor(r => r.Address, f => f.Address.FullAddress())
            .RuleFor(r => r.PhotoUrl, f => $"https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/GenericPhoto{f.Random.Number(1,20)}.jpg")
            .RuleFor(r => r.Id, Guid.NewGuid)
            .RuleFor(r => r.Menus, f => MenuDataFaker.Generate(f.Random.Number(1, 3)).ToArray())
            .FinishWith((f, r) =>
            {
                _menuIndex = 0;
            })
            .Generate(100)
            .ToArray();
    }
    
    public class RestaurantData
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PhotoUrl { get; set; }
        public MenuData[] Menus { get; set; }
    }

    public class MenuData
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Icon { get; set; }
        public string Availability { get; set; }
        public string PdfUrl { get; set; }
    }
}