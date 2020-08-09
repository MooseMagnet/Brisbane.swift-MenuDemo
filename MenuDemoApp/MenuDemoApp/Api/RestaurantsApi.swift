
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
    
    var request = URLRequest(url: urlComponents.url!)
    request.httpMethod = "GET"
    
    URLSession.shared.dataTask(
        with: request) { (data, _, _) in
            
            guard let data = data, data.count > 0 else {
                // Failed? Don't care. Pretend nothing happened.
                completion([])
                return
            }
            
            completion(try! JSONDecoder().decode([RestaurantData].self, from: data))
        }
        .resume()
}
