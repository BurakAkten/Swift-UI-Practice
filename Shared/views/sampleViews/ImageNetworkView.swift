//
//  ImageNetworkView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI
import Kingfisher

struct ImageNetworkView: View {
    let imageUrl: String;
    
    var body: some View {
        KFImage(URL(string: imageUrl))
            .fade(duration: 0.25)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: 12)
    }}

struct ImageNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        ImageNetworkView(imageUrl: "https://picsum.photos/200/300")
    }
}
