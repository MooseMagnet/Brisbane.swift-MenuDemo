
import SwiftUI

struct RestaurantsList : View {
    
    let restaurants: [RestaurantData]
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(restaurants, id: \.id) { r in
                NavigationLink(destination: RestaurantScreen(restaurant: r)) {
                    RestaurantCard(restaurant: r)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}
