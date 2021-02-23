//
//  ViewController.swift
//  Important events
//
//  Created by Лидия Ладанюк on 19.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var hBPersons = HBPerson.getBirthdaysList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: hBPersons)
        
    }
    
    private func setupViewControllers(with hBPersons: [HBPerson]) {
        let birthdayListVC = viewControllers?.first as! BirthdayListViewController
        navigationItem.title = "Birthday list"
        
        birthdayListVC.hBPersons = hBPersons
    }


}

