//
//  ViewController.swift
//  SegueNavigation
//
//  Created by Student on 21/07/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var onoffswitch: UISwitch!
    @IBOutlet weak var testField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToYellow(_ sender: Any) {
        if onoffswitch.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
            
        }else {
            performSegue(withIdentifier: "green", sender: nil)
            
        }

    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if onoffswitch.isOn{
            
            segue.destination.navigationItem.title = testField.text
        }
    }
}

