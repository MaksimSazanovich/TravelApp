// DetailsPageHeader.swift

import SwiftUI

struct DetailsPageHeader: View {
    var image: String
    var onBack: () -> Void
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
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
                    onBack()
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
