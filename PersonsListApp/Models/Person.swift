//
//  Person.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 27.07.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: Int
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    class DataManager {
        var persons = [Person]()
        
        init() {
            setup()
        }
                var names = [Person]()
                var surnames = [Person]()
                var phones = [Person]()
                var emails = [Person]()
        
        func setup() {
            let names = ["Alexander", "Oliver", "Vasiya", "Gena", "Jack"]
            let surnames = ["Popov", "Ivanov", "Petrov", "Sidorov", "Bregnev"]
            let phones = [12345, 42341, 56402, 63810, 35015]
            let emails = ["ag@mail.ru", "pop@gmail.com", "petr@bk.ru", "super@rambler.ru, gena@yandex.ru"]
            
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
}
