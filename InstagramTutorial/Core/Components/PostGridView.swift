//
//  PostGridView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import SwiftUI

struct PostGridView: View {
    
    var posts: [Post]
    
    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        ]
    
    private let imageDeimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1

    
    var body: some View {
        LazyVGrid(columns: gridItem) {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDeimension, height: imageDeimension)
                    .clipped()
                
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.Mock_Post)
}
