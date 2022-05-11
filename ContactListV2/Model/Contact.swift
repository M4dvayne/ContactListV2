//
//  Contact.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 08.05.2022.
//

import Foundation

enum Symbol: String {
    case phone = "phone"
    case mail = "envelope"
}

struct Person: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContact() -> [Person]{
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        let totalUserQuantity = min(names.count, surnames.count, phoneNumbers.count, emails.count)
        
        for index in 0..<totalUserQuantity {
            
            let person = Person(name: names[index], surname: surnames[index], phoneNumber: phoneNumbers[index], email: emails[index])
            
            persons.append(person)
            
        }
        return persons
    }
}
