//
//  ContentView.swift
//  Shared
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    fileprivate func getZStack() -> some View {
        return ZStack(){
            Rectangle().foregroundColor(.indigo)
            Circle().foregroundColor(.yellow).padding()
            Text("Hello Body")
                .font(.title)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .padding(12)
        }.padding()
    }
    
    var body: some View {
        VStack {
            Circle().padding(.all, 12.0).foregroundColor(Color.purple)
            Spacer(minLength: 12)
            HStack(){
                RoundedRectangle(cornerRadius: 12).foregroundColor(.brown).padding()
                getZStack()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
