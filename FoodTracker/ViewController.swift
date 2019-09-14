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
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        mealNameLabel.text = textField.text
    }

    
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

