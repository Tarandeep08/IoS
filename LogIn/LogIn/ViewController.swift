//
//  ViewController.swift
//  LogIn
//
//  Created by Student on 20/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var forgotUNbutton: UIButton!
    @IBOutlet weak var forgotPWbutton: UIButton!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotPWbutton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUNbutton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }

    @IBAction func forgotUNbutton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    
    @IBAction func forgotPWbutton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
}

