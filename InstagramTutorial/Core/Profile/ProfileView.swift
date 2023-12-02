//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-16.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    
    
    
    var posts: [Post] {
        return Post.Mock_Post.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
        
        ScrollView{
            // header
            ProfileHeaderView(user: user)
            
            // post grid view
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.Mock_Users[4])
}
