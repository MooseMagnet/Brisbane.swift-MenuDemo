
import Foundation

let fakeRestaurants: [RestaurantData] = [

    .init(id: UUID(), photoUrl: "https://images.pexels.com/photos/2506993/pexels-photo-2506993.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", name: "Yum Yum Fud", address: "123 Cool Lane", menus: [
        
        .init(id: UUID(), icon: "sunrise.fill", name: "Breakfast", description: "Yum breakfast hooray!", availability: "6am-12pm", pdfUrl: "https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/GenericBreakfastMenu.pdf"),
        
        .init(id: UUID(), icon: "sunset.fill", name: "Dinner", description: "Dinnies? Yummies! Let's go!", availability: "6pm-9pm", pdfUrl: "https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/GenericDinnerMenu.pdf"),
    ]),
    
    .init(id: UUID(), photoUrl: "https://images.pexels.com/photos/1223530/pexels-photo-1223530.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", name: "Delicious Wow", address: "99 Tasty Town", menus: [
        
        .init(id: UUID(), icon: "sunrise.fill", name: "Breakfast", description: "Don't you just love breakfast?", availability: "6am-11am", pdfUrl: "https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/GenericBreakfastMenu.pdf")
    ]),
    
    .init(id: UUID(), photoUrl: "https://images.pexels.com/photos/776538/pexels-photo-776538.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", name: "Cookie Craze", address: "13 Cookie Crescent", menus: [
        
        .init(id: UUID(), icon: "sun.max.fill", name: "Cookies", description: "We only sell cookies!", availability: "7am-4pm", pdfUrl: "https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/GenericBreakfastMenu.pdf")
    ])
    
]
