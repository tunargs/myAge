//
//  ViewController.swift
//  OhMyAge
//
//  Created by Tunar Mahmudov on 13.09.21.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UnsplashImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    var ageCalculator = AgeCalculator()
    let calendar = Calendar(identifier: .gregorian)
    var comps = DateComponents()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.fetchPhoto()
        comps.year = 0
        let maxDate = calendar.date(byAdding: comps, to: Date())
        comps.year = -150
        let minDate = calendar.date(byAdding: comps, to: Date())
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        datePicker.maximumDate = maxDate
        datePicker.minimumDate = minDate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if ageCalculator.getBirthdayFromLocal() != nil {
            performSegue(withIdentifier: "goToAgeDisplayer", sender: self)
        }
    }
    
    @IBAction func enterClicked(_ sender: UIButton) {
        let birthdayDate = datePicker.date
        ageCalculator.setBirthdayToLocal(birthdayDate: birthdayDate)
        ageCalculator.calculateAge(birthdayDate: birthdayDate)
        performSegue(withIdentifier: "goToAgeDisplayer", sender: self)
    }
}

