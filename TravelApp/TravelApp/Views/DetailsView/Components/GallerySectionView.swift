// GallerySectionView.swift

import SwiftUI

struct GallerySectionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.system(size: 26, weight: .bold))
            
            HStack(spacing: 15) {
                Image(.img1)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                  Image(.img1)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                  Image(.img1)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                  Image(.img1)
                    .resizable()
                    .scaledToFit()
                    .overlay {
                        Rectangle()
                            .fill(.black.opacity(0.5))
                        Text("12+")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundStyle(.white)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
               
            }
        }
    }
}
