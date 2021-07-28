//
//  ContactsViewController.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 27.07.2021.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    // MARK: - Public properties
    var person = DataManager() // недопонимаю какое свойство тут объявлять
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        "Full Name" // понимаю что сюда нужно FullName из DataManager поместить, но как к нему обратиться???
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.persons.count
    }
    
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let person = person.persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


    
