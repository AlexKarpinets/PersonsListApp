//
//  DataManager.swift
//  PersonsListApp
//
//  Created by Karpinets Alexander on 28.07.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Alexander", "Oliver", "Vasiya", "Gena", "Jack"]
    let surnames = ["Popov", "Ivanov", "Petrov", "Sidorov", "Bregnev"]
    let phones = [12345, 42341, 56402, 63810, 35015]
    let emails = ["ag@mail.ru", "pop@gmail.com", "petr@bk.ru", "super@rambler.ru", "gena@yandex.ru"]
    
    private init() {}
    
}
