// HeartButton.swift

import SwiftUI

struct HeartButton: View {
    var circleSize: CGFloat = 35
    var heartSize: CGFloat = 18
    var body: some View {
        Button {
            //
        } label: {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: circleSize)
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: heartSize)
                    .foregroundStyle(.red)
                
            }
        }
    }
}

