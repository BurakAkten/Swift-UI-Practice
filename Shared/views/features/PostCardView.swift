//
//  PostCardView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct PostCardView: View {
    let post : PostModel
    
    var body: some View {
        VStack {
            HStack(){
                Image(systemName: "person.crop.circle.fill").foregroundColor(.red)
                Text("\(post.name)")
                Spacer()
            }.padding(.bottom, 8)
            HStack(){
                Text("\(post.postContent)")
                Spacer()
                if post.likeCount != nil {
                    Image(systemName: "heart.rectangle").foregroundColor(.pink)
                    Text("\(post.likeCount!)")
                }
               
            }
        }
        .frame(height: 100, alignment: .leading)
        .padding(.horizontal, 8)
        .overlay(RoundedRectangle(cornerRadius:8).stroke().foregroundColor(.yellow))
        

    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: PostModel.fakePost).previewLayout(.sizeThatFits)
    }
}
