//
//  Age.swift
//  OhMyAge
//
//  Created by Tunar Mahmudov on 13.09.21.
//

import Foundation
struct Age {
    let birthDate: Date?
    let ageYears: Int?
    let ageMonths: Int?
    let ageDays: Int?
    
    func getAgeDescription() -> String? {
        let yearString = ageYears! != 0 ? (ageYears! == 1 ? "\(ageYears!) year " : "\(ageYears!) years ") : ""
        let monthString = ageMonths! != 0 ? (ageMonths! == 1 ? "\(ageMonths!) month " : "\(ageMonths!) months ") : ""
        let dayString = ageDays! != 0 ? (ageDays! == 1 ? "\(ageDays!) day " : "\(ageDays!) days ") : ""
        
        return yearString + monthString + dayString
    }
}
