//
//  PostsView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        NavigationView(){
            List(PostModel.posts) { post in
                NavigationLink {
                    PostInfoView(post: post)
                } label: {
                    PostCardView(post: post)
                }
            }
            .navigationTitle(Text("Posts"))
            .listStyle(.grouped)
          
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
