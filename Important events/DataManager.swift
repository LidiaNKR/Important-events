//
//  DataManager.swift
//  Important events
//
//  Created by Лидия Ладанюк on 20.02.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var namesHB = ["Benjamin", "James", "Mason",
                   "William", "Liam", "Noah",
                   "Jacob", "Emma", "Olivia", "Sophia"
    ]
    
    var surnamesHB = ["Cox", "Ramirez", "Gray",
                     "Howard", "Rogers", "Morgan",
                     "Murphy", "Bell", "Rivera", "Torres"
    ]
    
    var birthdayDates = ["01.02.1992", "28.02.1987", "15.10.1990",
                        "05.03.1993", "18.02.1980", "17.09.1993",
                        "03.03.1990", "15.02.1995", "06.10.1989", "15.09.1993",
    ]
    
    var namesIE = ["Benjamin", "James", "Mason",
                   "William", "Liam", "Noah",
                   "Jacob", "Emma", "Olivia", "Sophia"
    ]
    
    var surnamesIE = ["Cox", "Ramirez", "Gray",
                     "Howard", "Rogers", "Morgan",
                     "Murphy", "Bell", "Rivera", "Torres"
    ]
    
    var events = ["wedding day", "wedding day", "wedding day",
                  "name day", "name day", "name day",
                  "getting a diploma", "getting a diploma",
                  "apartment purchase", "apartment purchase"
    ]
    
    var importantEventDates = ["01.02.1992", "28.02.1987", "15.10.1990",
                        "05.03.1993", "18.02.1980", "17.09.1993",
                        "03.03.1990", "15.02.1995", "06.10.1989", "15.09.1993",
    ]
    
    private init() {}

}
