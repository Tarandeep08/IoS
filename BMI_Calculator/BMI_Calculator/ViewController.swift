//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Student on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var calculatedBMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weightTextField.text ?? ""
        let weight = Double(weightString) ?? 0
        
        let heightString = heightTextField.text ?? ""
        let height = Double(heightString) ?? 0
        
        let bmi = weight / (height * height)
        calculatedBMI.text = "BMI is \(bmi)"
    }
    
}

