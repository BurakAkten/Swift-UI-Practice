//
//  CustomListView.swift
//  Swift-UI-Practice
//
//  Created by Burak Akten on 14.11.2021.
//

import SwiftUI

struct CustomProfileView: View {
    fileprivate func profileSection() -> some View {
        return Section(header: Text("Profile").font(.title).foregroundColor(.black), content: {
            HStack(){
                Image(systemName: "person.crop.circle")
                Text("Burak Akten")
            }
            HStack(){
                Image(systemName: "phone")
                Text("555 555 55 55")
            }
            HStack(){
                Image(systemName: "envelope")
                Text("burak@hotmail.com")
            }
        }).padding()
    }
    
    var body: some View {
        List(){
            profileSection()
            HStack(){
                Text("About")
                Spacer()
                Image(systemName: "chevron.right")
            }
            HStack(alignment: .bottom, content: {
                Image(systemName: "externaldrive.connected.to.line.below")
                Spacer()
                Text("Log Out")
                Spacer()
                Image(systemName: "icloud.and.arrow.down")
            })
            

        }
        .listStyle(.insetGrouped)
    }
}

struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProfileView()
    }
}
