
import SwiftUI

struct MenusList : View {
    
    let menus: [MenuData]
    let onSelect: (MenuData) -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(menus, id: \.id) { m in
                Button(action: { self.onSelect(m) }) {
                    MenuCard(menu: m)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}
