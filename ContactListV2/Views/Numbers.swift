//
//  Numbers.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 10.05.2022.
//

import SwiftUI

struct Numbers: View {
    let persons = Person.getContact()
    
    var body: some View {
        List{
            ForEach(persons, id: \.self) { person in
                Section(header: Text(person.fullName) ) {
                    Text(person.phoneNumber)
                    Text(person.email)
                }
            }
        }
    }
}


struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers()
    }
}

