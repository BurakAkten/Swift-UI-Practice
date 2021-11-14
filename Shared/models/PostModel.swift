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
        PostModel(name: "Burak Akten", postContent: "Today weather is rainy!!", likeCount: 22),
        PostModel(name: "Ezgi Akcan", postContent: "Today weather is cloudly!!", likeCount: 12),
        PostModel(name: "Burak Akten", postContent: "Lets go to the park"),
        PostModel(name: "Burak Akten", postContent: "Today weather is rainy!!", likeCount: 22),
        PostModel(name: "Ezgi Akcan", postContent: "Today weather is cloudly!!", likeCount: 12),
        PostModel(name: "Burak Akten", postContent: "Lets go to the park"),
        PostModel(name: "Burak Akten", postContent: "Today weather is rainy!!", likeCount: 22),
        PostModel(name: "Ezgi Akcan", postContent: "Today weather is cloudly!!", likeCount: 12),
        PostModel(name: "Burak Akten", postContent: "Lets go to the park"),
    ]
    
    static let fakePost : PostModel = PostModel(name: "Burak Akten", postContent: "Today weather is rainy!!", likeCount: 22)

}
