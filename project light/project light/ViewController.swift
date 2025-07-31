//
//  ViewController.swift
//  project light
//
//  Created by Student on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        if lightOn {
            view.backgroundColor = .white
        }
        else{
            view.backgroundColor = .black
        }
    }
    var lightOn = true
    
}

