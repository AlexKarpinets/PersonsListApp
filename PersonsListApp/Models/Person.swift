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
}

extension Person {
    static func setRandomPersons() -> [Person] {
            var persons: [Person] = []
            
            let names = DataManager.shared.names
            let surnames = DataManager.shared.surnames
            let phones = DataManager.shared.phones
            let emails = DataManager.shared.emails
            
            for index in 0..<5 {
                
                let person = Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
                persons.append(person)
            }
            return persons
        }
    }
