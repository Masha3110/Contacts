//
//  DataManager.swift
//  Contacts
//
//  Created by SubZero on 17.04.2022.
//

class DataManager {
    static let shared = DataManager()
    private init() {}
    
    let names = [ "Tim", "Eva", "Jim",
                            "Bruce", "Kira", "Stive",
                            "Robert", "Harry", "Hermiona"]
    
    let surnames = [ "Potter", "Greindger", "Cook",
                              "Green", "Willice", "Nightly",
                              "Pattincone", "Kerry", "Jobs" ]
    
    var emails = ["Tim@gmail.com", "Eva@gmail.com", "Jim@gmail.com",
                            "Bruce@gmail.com", "Kira@gmail.com", "Stive@gmail.com",
                            "Robert@gmail.com", "Harry@gmail.com", "Hermiona@gmail.com"]
    
    var phoneNumbers = ["81112223344", "82223334455", "83334445566",
                                  "84445556677", "85556667788", "86667778899",
                                  "87778889900", "88889990011", "89990001122"]
}
