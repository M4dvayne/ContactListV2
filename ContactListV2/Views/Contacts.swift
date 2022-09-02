//
//  Contacts.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 10.05.2022.
//

import SwiftUI

struct Contacts: View {
    
    let contacts: [Person]!
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: DetailInformation(person: contacts)) {
                List(contacts) { person in
                    Text("\(person.fullName)")
                }
                .listStyle(.insetGrouped)
                .foregroundColor(.black)
            }
            .navigationTitle("Contact List")
        }
    }
}

