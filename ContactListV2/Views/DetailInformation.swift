//
//  DetailInformation.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 10.05.2022.
//

import SwiftUI

struct DetailInformation: View {
    let person: [Person]
    
    var body: some View {
        List {
            Section(header: Image(systemName: "person.fill")
                .resizable()
                .frame(width: 120, height: 120)) {
                    HStack {
                        Image(systemName: Symbol.phone.rawValue)
                        Text(person.first?.phoneNumber ?? "")
                    }
                    HStack {
                        Image(systemName: Symbol.mail.rawValue)
                        Text(person.first?.email ?? "")
                    }
                }
        }
        .navigationTitle(person.first?.fullName ?? "")
    }
}

struct DetailInformation_Previews: PreviewProvider {
    static var previews: some View {
        DetailInformation(person: Person.getContact())
    }
}

