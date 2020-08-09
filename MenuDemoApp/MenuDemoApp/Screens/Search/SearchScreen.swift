
import SwiftUI

struct SearchScreen : View {
    
    @State private var results = [RestaurantData]()
    
    var body: some View {
        ScrollView {
            SearchField(onSearch: search)
                .padding()
                .zIndex(1) // Workaround for a SwiftUI bug RE: image bounds.
            
            RestaurantsList(restaurants: results)
                .padding([.leading, .trailing])
        }
        .navigationBarTitle("Search")
    }
    
    private func search(searchInput: String) {
        getRestaurants(search: searchInput) { r in
            self.results = r
        }
    }
}
