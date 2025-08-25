//
//  ViewController.swift
//  PreWork
//
//  Created by wilman garcia on 24/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var secondNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var stepperCount: UIStepper!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numbersOfPetsLabel: UILabel!
    
    @IBOutlet weak var btnIntroduce: UIButton!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numbersOfPetsLabel.text="\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
       
               let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text!) \(secondNameTextField.text!) and I attend \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numbersOfPetsLabel.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."

               print(introduction)
        
        
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)

                present(alertController, animated: true, completion: nil)
        
    }
    

}

