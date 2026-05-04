// DetailsView.swift

import SwiftUI

struct DetailsView: View {
    var image: String
    @Binding var path: NavigationPath
    var body: some View {
        VStack(alignment: .center, spacing: 30) {

            DetailsPageHeader(image: image) {
                path.removeLast()
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Overview")
                    .font(.system(size: 26, weight: .bold))
                
                Text("Greenland is the world’s largest island, a place where nature remains in its most primal and majestic state.")
                    .font(.system(size: 16))
                    .foregroundStyle(.gray)
                    .lineHeight(.exact(points: 23))
            }

            GallerySectionView()
            
            Button {
                //
            } label: {
                HStack {
                    EmptyView()
                        .frame(width: 15)
                    Spacer()
                    Text("Book Now")
                        .font(.system(size: 20, weight: .medium))
                    Spacer()
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                }
                .foregroundStyle(.white)
                .frame(height: 65)
                .padding(.horizontal, 25)
                .background(.appBlack)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 30)
    }
}


