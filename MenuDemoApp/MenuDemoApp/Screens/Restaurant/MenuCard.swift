
import SwiftUI

struct MenuCard : View {
    
    let menu: MenuData
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 20) {
                
                Image(systemName: menu.icon)
                    .imageScale(.large)
                    .foregroundColor(Color(.label))
                
                VStack {
                    
                    Text(menu.name)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(menu.description)
                        .frame(maxWidth: .infinity, minHeight: 60, alignment: .topLeading)
                }
            }
            
            Text(menu.availability)
                .bold()
                .foregroundColor(.accentColor)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray6))
        .contentShape(Rectangle())
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}
