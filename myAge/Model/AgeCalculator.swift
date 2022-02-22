//
//  AgeCalculator.swift
//  OhMyAge
//
//  Created by Tunar Mahmudov on 13.09.21.
//

import Foundation
struct AgeCalculator {
    var age: Age?
    let defaults = UserDefaults.standard
    
    mutating func calculateAge(birthdayDate: Date) -> Age? {
        let today = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: birthdayDate, to: today)
        
        let ageYears = components.year
        let ageMonths = components.month
        let ageDays = components.day
        
        age = Age(birthDate: birthdayDate, ageYears: ageYears, ageMonths: ageMonths, ageDays: ageDays)
        return age
    }
    
    func setBirthdayToLocal(birthdayDate: Date) {
        defaults.setValue(birthdayDate, forKey: BirthdayKey.birthdayKey)
        defaults.synchronize()
    }
    
    func getBirthdayFromLocal() -> Date? {
        if let birthdayDate = defaults.object(forKey: BirthdayKey.birthdayKey) as? Date {
            return birthdayDate
        } else {
            return nil
        }
    }
    
    func getAge() -> Age? {
        return age
    }
}
