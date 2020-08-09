using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

namespace MenuDemoApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class RestaurantsController : ControllerBase
    {
        [HttpGet]
        public RestaurantData[] Get([FromQuery]string search) =>
            (string.IsNullOrWhiteSpace(search) || search.Length < 3) 
                ? Array.Empty<RestaurantData>()
                : Restaurants.All.Where(r => r.Name.Contains(search, StringComparison.OrdinalIgnoreCase) || r.Address.Contains(search, StringComparison.OrdinalIgnoreCase)).ToArray();
    }
}