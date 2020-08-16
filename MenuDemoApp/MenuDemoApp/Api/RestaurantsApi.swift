
import Foundation
import Combine

struct RestaurantData : Codable {
    let id: UUID
    let photoUrl: String
    let name: String
    let address: String
    let menus: [MenuData]
}

struct MenuData : Codable {
    let id: UUID
    let icon: String
    let name: String
    let description: String
    let availability: String
    let pdfUrl: String
}

func getRestaurants(search: String, completion: @escaping ([RestaurantData]) -> Void) {
    
    var urlComponents = URLComponents(string: "https://sd98fg6asd98gasd9g6sda986f98d.azurewebsites.net/restaurants")!
    urlComponents.queryItems = [
        .init(name: "search", value: search)
    ]
    
    URLSession.shared.dataTask(with: urlComponents.url!) { (data, _, _) in
        completion(try! JSONDecoder().decode([RestaurantData].self, from: data!))
    }
    .resume()
}
