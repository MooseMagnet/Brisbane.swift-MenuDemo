
import SwiftUI

struct RestaurantCard : View {
    
    let restaurant: RestaurantData
    
    @State private var image: UIImage? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text(restaurant.name)
                    .foregroundColor(.primary)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(restaurant.address)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .background(Color(.systemGray6).opacity(0.9))
        }
        .background(RemoteImage(url: restaurant.photoUrl))
        .contentShape(Rectangle())
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .frame(maxWidth: .infinity, minHeight: 250, maxHeight: 250)
    }
}
