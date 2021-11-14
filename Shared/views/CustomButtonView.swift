//
//  CustomButtonView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

typealias OnClick = () -> Void

struct CustomButtonView: View{
   @State private var clicks : Int = 0;
    let onclick : OnClick;
    
    var body: some View{
        return VStack(){
            Button(action: {
                clicks = clicks + 1;
                onclick()
            }) {
                HStack(){
                    Image(systemName: "person").foregroundColor(.white)
                    Text("Clickable")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .buttonStyle(.bordered)
            .background(Color("button_bg"))
            .buttonBorderShape(.roundedRectangle)
            .cornerRadius(12)
            Group(){
                if clicks > 0 {
                    Text("You have clicked \(clicks)")
                }
            }
        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(onclick: {})
    }
}
