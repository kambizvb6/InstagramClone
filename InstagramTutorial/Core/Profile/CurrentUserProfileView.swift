//
//  CurrentUserProfileView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import SwiftUI

struct CurrentUserProfileView: View {

    let user: User
    var posts: [Post] {
        return Post.Mock_Post.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
                
            }
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.Mock_Users[0])
}
