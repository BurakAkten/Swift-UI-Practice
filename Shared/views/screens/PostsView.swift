//
//  PostsView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        List(PostModel.posts) { post in
            PostCardView(post: post)
            
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
