// PageHeader.swift

import SwiftUI

struct PageHeader: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.appGray, lineWidth: 1)
                        .frame(width: 50, height: 50)
                    Image(.user)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                VStack(alignment: .leading, spacing: 7) {
                    Text("Welcome")
                        .font(.system(size: 12))
                    Text("Max")
                        .font(.system(size: 17, weight: .bold))
                }
            }
            
            Spacer()
            Button {
                //
            } label: {
                ZStack {
                    Circle()
                        .stroke(.appGray, lineWidth: 1)
                        .frame(width: 50)
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .foregroundStyle(.appGray)
                        .overlay(alignment: .topTrailing) {
                            Circle()
                                .fill(.red)
                                .frame(width: 6.5)
                                .overlay {
                                    Circle()
                                        .stroke(.white, lineWidth: 1.5)
                                }
                                .offset(y: -2)
                        }
                }
            }

        }
    }
}
