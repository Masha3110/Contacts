//
//  Person.swift
//  Contacts
//
//  Created by SubZero on 17.04.2022.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email : String
    var phoneNumber: String
    
    var fullName: String {
        name + " " + surname
    }
}


extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index])
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
