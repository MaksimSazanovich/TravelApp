// SearchView.swift

import SwiftUI

struct SearchView: View {
    @Binding var text: String
    var body: some View {
        HStack(spacing: 15) {
            TextField("Search your trip...", text: $text)
                .frame(height: 50)
                .padding(.horizontal, 10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 5)
            Button {
                //
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.appBlack)
                        .frame(width: 50, height: 50)
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.white)
                }
            }

        }
    }
}
