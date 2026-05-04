// CategoryCardView.swift

import SwiftUI

struct CategoryCardView: View {
    var image: String
    var title: String
    var subTitle: String
    var body: some View {
        HStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 70)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                Text(subTitle)
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
                
            }
        }
        .frame(minWidth: 150, alignment: .leading)
        .padding(5)
        .padding(.trailing, 5)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 0)
    }
}

#Preview {
    CategoryCardView(image: "img1", title: "Pasir", subTitle: "Mesir")
}
