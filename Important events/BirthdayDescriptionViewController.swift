//
//  BirthdayDescriptionViewController.swift
//  Important events
//
//  Created by Лидия Ладанюк on 22.02.2021.
//

import UIKit

class BirthdayDescriptionViewController: UIViewController {
    
    @IBOutlet var imagePerson: UIImageView!
    @IBOutlet var hBPersonLabel: UILabel!
    @IBOutlet var bDatePersonLabel: UILabel!
    
    var hBPerson: HBPerson!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hBPersonLabel.text = hBPerson.fullName
        bDatePersonLabel.text = hBPerson.happyBirthdayDate
        imagePerson.image = UIImage(named: hBPerson.fullName)
        
        viewWillLayoutSubviews()
        
    }
    
    override func viewWillLayoutSubviews() {
        imagePerson.layer.cornerRadius = imagePerson.frame.width / 2
    }
    
}
