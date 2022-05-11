//
//  Contacts.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 10.05.2022.
//

import SwiftUI

struct Contacts: View {
    let persons = Person.getContact()
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: DetailInformation(person: persons)) {
                List(persons) { person in
                    Text("\(person.fullName)")
                }
                .listStyle(.insetGrouped)
                .foregroundColor(.black)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getContact())
    }
}

