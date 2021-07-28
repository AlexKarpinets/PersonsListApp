//
//  DataManager.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 28.07.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    var persons = [Person]()
    
    init() {
        setRandomPerson()
    }
    
    func setRandomPerson() {
        let names = ["Alexander", "Oliver", "Vasiya", "Gena", "Jack"]
        let surnames = ["Popov", "Ivanov", "Petrov", "Sidorov", "Bregnev"]
        let phones = [12345, 42341, 56402, 63810, 35015]
        let emails = ["ag@mail.ru", "pop@gmail.com", "petr@bk.ru", "super@rambler.ru", "gena@yandex.ru"]
        
        for _ in 0..<5 {
            let name = Int.random(in: 0..<names.count)
            let surname = Int.random(in: 0..<surnames.count)
            let phone = Int.random(in: 0..<phones.count)
            let email = Int.random(in: 0..<emails.count)
            
            let person = Person(name: names[name], surname: surnames[surname], phone: phones[phone], email: emails[email])
            persons.append(person)
        }
    }
}