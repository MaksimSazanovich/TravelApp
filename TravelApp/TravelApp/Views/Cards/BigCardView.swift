// BigCardView.swift

import SwiftUI

struct BigCardView: View {
    var image: String
    var title: String
    var subTitle: String
    var likeAction: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .topTrailing) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                HeartButton()
                    .offset(x: -10, y: 10)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundStyle(.appGray)
            }
        }
        .frame(width: 180)
        .padding(9)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}
