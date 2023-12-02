//
//  FeedCell.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-17.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack{
            // image + username
            HStack{
                if let user = post.user {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
            Spacer()
            }
            .padding(.leading, 8)
            // post iamge
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            // action buttons
            HStack(spacing:16){
                Button {
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }

                Button {
                    print("Comment Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
                
            }
            .padding(.leading, 8)
            .foregroundStyle(.black)
            
            // like lable
            Text("\(post.like) Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top,1)
            //caption lable
            
            
            HStack{
                Text(post.user?.username ?? "").fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth:.infinity, alignment:.leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.semibold)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.Mock_Post[5])
}
