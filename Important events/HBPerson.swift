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
    
    extension HBPerson {
        static func getBirthdaysList() -> [HBPerson] {
            
            var hBPersons: [HBPerson] = []
            
            let names = DataManager.shared.namesHB
            let surnames = DataManager.shared.surnamesHB
            let birthdayDates = DataManager.shared.birthdayDates
            
            for index in 0..<names.count {
                let hBPerson = HBPerson(name: names[index],
                                        surname: surnames[index],
                                        happyBirthdayDate: birthdayDates[index]
                )
                hBPersons.append(hBPerson)
            }
            return hBPersons
        }
    }
    
