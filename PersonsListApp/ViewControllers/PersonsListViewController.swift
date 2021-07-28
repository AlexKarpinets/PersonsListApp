//
//  PersonsListViewController.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 27.07.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    // MARK: - Private properties
    private var person = DataManager()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        person.persons.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = person.persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = person.persons[indexPath.row]
        detailVC.person = person
    }
    // Опять проблема с передачей данных, предполагаю что связано с не правильно созданным DataManager
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let tabBarController = segue.destination as? UITabBarController else {return}
//            guard let viewControllers = tabBarController.viewControllers else {return}
//                guard let indexPath = tableView.indexPathForSelectedRow else { return }
//
//            viewControllers.forEach {
//                if let detailVC = $0 as? DetailViewController {
//                    let person = person.persons[indexPath.row]
//                    detailVC.person = person
//                } else if let navigationVC = $0 as? UINavigationController {
//                    let contactVC = navigationVC.topViewController as! ContactsViewController
//                      let person = person.persons[indexPath.row]
//                    contactVC.person = person
//                }
//                }
//            }
}
