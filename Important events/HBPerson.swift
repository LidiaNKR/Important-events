//
//  HBPerson.swift
//  Important events
//
//  Created by Лидия Ладанюк on 20.02.2021.
//

import Foundation

struct HBPerson {
    let name: String
    let surname: String
    let happyBirthdayDate: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
