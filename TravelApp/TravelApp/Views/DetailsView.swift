// DetailsView.swift

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {

            DetailsPageHeader()
            
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

struct DetailsPageHeader: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.img1)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 380)
            
            Rectangle()
                .fill(
                    Gradient(colors: [.clear, .black.opacity(0.65)])
                )
                .frame(height: 210)
            
            VStack(alignment: .leading) {
                Button {
                    //
                } label: {
                    Circle()
                        .fill(.white)
                        .frame(width: 50)
                        .overlay {
                            Image(systemName: "arrow.left")
                                .foregroundStyle(.black)
                        }
                        .shadow(color: .black.opacity(0.1), radius: 10)
                }
                
                Spacer()
                
                HStack() {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Greenland")
                            .font(.system(size: 30, weight: .bold))
                        Text("Greenland, North")
                            .font(.system(size: 22, weight: .medium))
                            
                    }
                    .foregroundStyle(.white)
                    .padding(.leading, 10)
                    Spacer()
                    HeartButton(circleSize: 50, heartSize: 23)
                }
                .padding(20)
            }
            .padding(15)
        }
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .frame(width: 350, height: 380)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}
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

#Preview {
    DetailsView()
}
