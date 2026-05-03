// SectionHeader.swift

import SwiftUI

struct SectionHeader: View {
    var text: String
    var action: () -> Void
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 20, weight: .bold))
            Spacer()
            Button {
                action()
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(.appBlack)
            }

        }
    }
}
