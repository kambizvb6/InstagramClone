//
//  UserStackView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-16.
//

import SwiftUI

struct UserStackView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStackView(value: 120, title: "Post")
}
