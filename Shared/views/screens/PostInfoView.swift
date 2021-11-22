//
//  PostInfoView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 22.11.2021.
//

import SwiftUI

struct PostInfoView: View {
    let post : PostModel
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8).foregroundColor(.gray)
            VStack{
                Text(post.name).font(.largeTitle).foregroundColor(.yellow)
                HStack{
                    Text("\(post.postContent)").foregroundColor(.white).font(.body)
                    Text("\(post.likeCount ?? 0)").foregroundColor(.red).font(.headline).bold()
                }
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius:8)
                        .stroke()
                        .foregroundColor(.yellow)
            )
        }.padding()
        
       
    }
}

struct PostInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PostInfoView(post: PostModel.fakePost)
    }
}
