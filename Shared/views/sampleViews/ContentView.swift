//
//  ContentView.swift
//  Shared
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: Geometric Shapes
    fileprivate func geometricShapes() -> some View {
        return VStack {
            Circle().padding(.all, 12.0).foregroundColor(Color.purple)
            Spacer(minLength: 12)
            HStack(){
                RoundedRectangle(cornerRadius: 12).foregroundColor(.brown).padding()
                ZStack(){
                    Rectangle().foregroundColor(.indigo)
                    Circle().foregroundColor(.yellow).padding()
                    VStack {
                        Group(){
                            Text("This")
                            Text("is")
                            Text("Sparta!!")
                        }
                        .font(.body)
                        .foregroundColor(.red)
                        .shadow(radius: 4)
                    }
                }.padding()
            }
        }
    }
    //MARK: Clicable Group View
    fileprivate func clicableGroupView() -> some View{
        return VStack() {
            ImageNetworkView(imageUrl: "https://picsum.photos/200/300")
            CustomProfileView()
            CustomButtonView(onclick: {})
        }
    }
    
    var body: some View {
        let showShapes = false;
        Group(){
            if showShapes {
                geometricShapes()
            } else{
                clicableGroupView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
