
import SwiftUI

struct RestaurantScreen : View {
    
    let restaurant: RestaurantData
    
    @State private var currentMenu: MenuData? = nil
    
    var body: some View {
        ScrollView {
            MenusList(
                menus: restaurant.menus,
                onSelect: { m in self.currentMenu = m })
                .padding([.top, .leading, .trailing])
        }
        .sheet(item: $currentMenu, content: pdfSheet)
        .navigationBarTitle(restaurant.name)
    }
    
    private func pdfSheet(menu: MenuData) -> some View {
        NavigationView {
            PdfMenuScreen(url: URL(string: menu.pdfUrl)!)
                .navigationBarTitle(
                    Text("\(menu.name) at \(restaurant.name)"),
                    displayMode: .inline)
        }
    }
}

extension MenuData : Identifiable { }
