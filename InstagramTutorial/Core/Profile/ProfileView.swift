//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-16.
//

import SwiftUI

struct ProfileView: View {
    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                // header
                VStack(spacing:10){
                    HStack{
                        Image("Kambiz")
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
                        Text("Kambiz Dehghani")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("iOS Developer")
                            .font(.footnote)
                    }
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(.black)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                            }
                    }

                    Divider()
                }
                
                // post grid view
                LazyVGrid(columns: gridItem) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("Kambiz")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
                
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
    ProfileView()
}
