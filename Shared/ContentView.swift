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
                    Text("Hello Body")
                        .font(.title)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .padding(12)
                }.padding()
            }
        }
    }
    //MARK: Clicable Group View
    fileprivate func clicableGroupView() -> some View{
        return VStack(alignment: .center, spacing: 12) {
            Spacer()
            Group(){
                Text("This")
                Text("is")
                Text("Sparta!!")
            }.font(.headline).foregroundColor(.red).shadow(radius: 4)
            Spacer()
            Button(action: onClick) {
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
    
    func onClick(){
        print("On click");
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
