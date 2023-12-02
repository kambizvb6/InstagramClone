//
//  ProfileHeaderView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-18.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    var body: some View {
        VStack(spacing:10){
            HStack{
                Image(user.profileImageUrl ?? "UserProfile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing:8){
                    UserStackView(value: 36, title: "Post")
                    UserStackView(value: 900, title: "Follower")
                    UserStackView(value: 120, title: "Following")
                }
            }
            .padding(.horizontal)
            
            //name and bio
            VStack(alignment:.leading, spacing: 4){
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 32)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                    }
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.Mock_Users[0])
}
