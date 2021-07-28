//
//  DetailViewController.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 27.07.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmailLabel.text = person.email
        phoneLabel.text = String(person.phone)
    }
}
