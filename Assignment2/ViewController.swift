//
//  ViewController.swift
//  Assignment2
//
//  Created by Andrew Vijay on 21/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var submittedLabel: UILabel!
    
    @IBOutlet weak var infoBox: UITextView!
    
    @IBAction func handleAddClick(_ sender: UIButton) {
       displayText()
    }
    
    @IBAction func handleSubmitClick(_ sender: UIButton) {
        var isValid = true
        if firstName.text! == "" || lastName.text! == "" || age.text! == "" || country.text == "" {
            isValid = false
        }
        
        if !isValid {
            displayText()
            submittedLabel.text = "Complete the missing info!"
        }else{
            submittedLabel.text = "Successfully submitted!"
            displayText()
        }
        
    }
    
    private func displayText(){
        let fullName = "\(firstName.text!) \(lastName.text!)"
        let ageText = age.text!
        let countryText = country.text!
        let labelText = "Full Name : \(fullName)\nCountry : \(countryText) \nAge: \(ageText)"
        infoBox.text = labelText
    }
 
    
    @IBAction func handleClearClick(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        infoBox.text = ""
        submittedLabel.text = ""   
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

