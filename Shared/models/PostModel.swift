//
//  PostModel.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import Foundation


struct PostModel : Identifiable {
    var id: UUID = UUID()
    let name: String
    let postContent: String
    var likeCount: Int?
}

extension PostModel {
    static let posts : Array<PostModel> = [
        PostModel(name: "BA", postContent: "Today weather is rainy!!", likeCount: 22),
        PostModel(name: "EA", postContent: "Today weather is cloudly!!", likeCount: 12),
        PostModel(name: "BB", postContent: "Lets go to the park"),
        PostModel(name: "EA", postContent: "Today weather is rainy!!", likeCount: 22),
        PostModel(name: "BB", postContent: "Today weather is cloudly!!", likeCount: 12),
        
    ]
    
    static let fakePost : PostModel = PostModel(name: "BA", postContent: "Today weather is rainy!!", likeCount: 22)

}
