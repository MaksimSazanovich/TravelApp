// CategoryCardView.swift

import SwiftUI

struct CategoryCardView: View {
    var image: String
    var title: String
    var subTitle: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundStyle(.appGray)
            }
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 0)
    }
}
