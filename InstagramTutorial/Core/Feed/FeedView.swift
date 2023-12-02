//
//  FeedView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-17.
//

import SwiftUI

struct FeedView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32){
                    ForEach(Post.Mock_Post) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button {

                    } label: {
                        Image(systemName: "paperplane")
                            .foregroundStyle(.black)
                    }
                }
                ToolbarItem(placement: .topBarLeading){
                    Image("Instagram")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
