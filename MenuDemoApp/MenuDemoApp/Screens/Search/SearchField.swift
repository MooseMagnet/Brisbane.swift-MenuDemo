
import SwiftUI

struct SearchField : View {
    
    let onSearch: (String) -> Void
    
    @State private var searchInput = ""
    
    var body: some View {
        TextField(
            "Search by name or location",
            text: $searchInput,
            onCommit: { self.onSearch(self.searchInput) })
            .padding(8)
            .padding(.leading, 24)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                    
                    Spacer()
                })
    }
}
