//
//  iconText.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import SwiftUI

struct iconText: View {
    var body: some View {
        Image(systemName: "rainbow")
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
            .symbolRenderingMode(.multicolor)
            .symbolEffect(
                .variableColor
                    .reversing
            )
        
            .foregroundStyle(.blue)
    }
}

#Preview {
    iconText()
}
