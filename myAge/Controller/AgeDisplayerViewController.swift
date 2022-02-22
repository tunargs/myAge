//
//  AgeDisplayerViewController.swift
//  OhMyAge
//
//  Created by Tunar Mahmudov on 13.09.21.
//

import UIKit

class AgeDisplayerViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UnsplashImageView!
    @IBOutlet weak var ageLabel: UILabel!
    var age: Age?
    var ageCalculator = AgeCalculator()
    let birthdayDate = AgeCalculator().getBirthdayFromLocal()

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.fetchPhoto()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.age = self.ageCalculator.calculateAge(birthdayDate: self.birthdayDate!)
            self.ageLabel.text = self.age?.getAgeDescription()
        }
    }
}
