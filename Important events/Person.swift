//
//  Person.swift
//  Important events
//
//  Created by Елена Лазука on 22.02.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let event: String
    let data: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
extension Person {
    static func getContactList() -> [Person] {
        
        var IEDate: [Person] = []
        
        let names = DataManager.shared.namesIE
        let surnames = DataManager.shared.surnameIE
        let events = DataManager.shared.events
        let importantEventDate = DataManager.shared.importantEventDate
        
        for index in 0..<names.count {
            let eventDate = Person(name: names[index],
                                surname: surnames[index],
                                event: events[index],
                                data: importantEventDate[index])
            IEDate.append(eventDate)
        }
        return IEDate
    }
     }
    

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


