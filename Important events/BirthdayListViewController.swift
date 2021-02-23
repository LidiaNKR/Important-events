//
//  BirthdayListViewController.swift
//  Important events
//
//  Created by Лидия Ладанюк on 20.02.2021.
//

import UIKit

class BirthdayListViewController: UITableViewController {
    
    var hBPersons: [HBPerson] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hBPersons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonsBirthday", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let hBPerson = hBPersons[indexPath.row]
        
        content.text = hBPerson.fullName
        content.secondaryText = hBPerson.happyBirthdayDate
        content.image = UIImage(named: hBPerson.fullName)
        
        cell.contentConfiguration = content
        
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = hBPersons[indexPath.row]
        performSegue(withIdentifier: "HappyBirthday", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let birthdayDetailsVC = segue.destination as! BirthdayDescriptionViewController
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        let track = trackList[indexPath.row]
        birthdayDetailsVC.hBPerson = sender as? HBPerson
    }

}
