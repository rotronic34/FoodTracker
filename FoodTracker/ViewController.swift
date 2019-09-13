//
//  ViewController.swift
//  FoodTracker
//
//  Created by Apple on 9/5/19.
//  Copyright © 2019 Roeut Chak. All rights reserved.
// Start Developing iOS Apps (Swift)
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {

        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField){}


    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nameTextField.text = "Default Text"
    }
}

