//
//  DataManager.swift
//  ContactListV2
//
//  Created by Вячеслав Кремнев on 08.05.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John", "Paul", "Bob", "Steve", "Tom", "Peter", "Christopher", "Steven", "James", "Chris"]
    
    let surnames = ["Smith", "Cooper", "Greenwood", "Taylor", "Root", "Thompson", "Shelby", "William", "Brook", "Jackson"]
    
    let phoneNumbers = ["1-111-111-1111", "2-222-222-2222", "3-333-333-3333", "4-444-444-4444", "5-555-555-5555", "6-666-666-6666", "7-777-777-7777", "8-888-888-8888", "9-999-999-9999", "1-000-000-0000"]
    
    let emails = ["Email1", "Email2", "Email3", "Email4", "Email5", "", "Email6", "Email7", "Email8", "Email9", "Email0"]
    
    init() {}
}
