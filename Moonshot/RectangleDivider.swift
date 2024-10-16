//
//  RectangleDivider.swift
//  Moonshot
//
//  Created by Mój Maczek on 16/10/2024.
//

import SwiftUI

struct RectangleDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)    }
}

#Preview {
    RectangleDivider()
}
