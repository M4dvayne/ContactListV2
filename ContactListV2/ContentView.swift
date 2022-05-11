//
//  ContentView.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 08.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Contacts()
                .tabItem {
                    Image(systemName: Symbol.mail.rawValue)
                    Text("Contacts")
                }
            Numbers()
                .tabItem{
                    Image(systemName: Symbol.phone.rawValue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

