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
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


