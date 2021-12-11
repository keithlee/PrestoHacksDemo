//
//  ContentView.swift
//  Shared
//
//  Created by Keith Lee on 12/11/21.
//

import SwiftUI

struct User {
    
    let name: String
    let avatarImageName: String
    
}


class InstagramPostViewModel: ObservableObject {
    
    var user: User
    
    init(user: User) {
        self.user = user
    }
    
}


struct ContentView: View {
    
    
//    @State var data: InstagramPostViewModel
    @State var showHeart: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Post 1
                    // Top bar
                    HStack {
                        Image("avatar1")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Benrobo")
                        Spacer()
                        Button {
                            print("I tapped more button")
                        } label: {
                            Image("more")
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    // Image post
                    Image("cats1")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture(count: 2) {
                            self.showHeart = true
                        }
                    
                    if self.showHeart {
                        Image("heart")
                    }
                    
                    // Instagram buttons
                    HStack {
                        Image("heart")
                        Image("comment")
                        Image("forward")
                        Spacer()
                        Image("favorite")
                    }
                    .padding(.horizontal, 10)
                    
                    // Views and comments section
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("523 views")
                            Text("This is a great cat photo")
                            Text("View all 39 comments")
                                .foregroundColor(.gray)
                            Text("3 minutes ago")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    
                    
                    
                    
                    // Post 2
                    // Top bar
                    HStack {
                        Image("avatar2")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Donna")
                        Spacer()
                        Button {
                            print("I tapped more button")
                        } label: {
                            Image("more")
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    // Image post
                    Image("cats2")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture(count: 2) {
                            print("I double tapped the image")
                        }
                    
                    // Instagram buttons
                    HStack {
                        Image("heart")
                        Image("comment")
                        Image("forward")
                        Spacer()
                        Image("favorite")
                    }
                    .padding(.horizontal, 10)
                    
                    // Views and comments section
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("523 views")
                            Text("This is a great cat photo")
                            Text("View all 39 comments")
                                .foregroundColor(.gray)
                            Text("3 minutes ago")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                }
                .navigationTitle("Instagram")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
