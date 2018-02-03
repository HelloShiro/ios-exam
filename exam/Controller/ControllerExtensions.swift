//
//  Extensions.swift
//  exam
//
//  Created by Chen ChiYun on 02/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

extension ListPage {
    
    //functions of loads and shows a list of Persons from a remote source
    func fetchjson() {
        if let url = URL(string: "https://randomapi.com/api/rk0ljla8?key=N79B-49S2-VZ81-HC9O") {
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                do {
                    let jsonResult = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    let json = jsonResult["results"] as? NSArray
                    let jsonArray = json![0] as? NSDictionary
                    print(jsonArray!)
                    //Caches the loaded list of Persons
                    let person = Person()
                    person.firstname = jsonArray!["firstname"] as? String
                    person.lastname = jsonArray!["lastname"] as? String
                    person.birthday = jsonArray!["birthday"] as? String
                    person.email = jsonArray!["email"] as? String
                    person.mobile = jsonArray!["mobile"] as? String
                    person.address = jsonArray!["mobile"] as? String
                    person.contactperson = jsonArray!["contactperson"] as? String
                    person.contactpersonphone = jsonArray!["contactpersonphone"] as? String
                    person.age = self.calculateAge(birthday: (jsonArray!["birthday"] as? String)!)
                    //prepare in persons array variable
                    self.persons?.append(person)
                    DispatchQueue.main.async(execute: { self.collectionView?.reloadData()})
                    self.fetchCount += 1
                } catch let err {
                    print(err)
                }
                }.resume()
        }
    }
    
    func calculateAge(birthday: String) -> Int {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateFormater.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let now = Date()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
        let age = calcAge.year
        return age!
    }
}
