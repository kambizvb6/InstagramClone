//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Kambiz on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = ContentViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
