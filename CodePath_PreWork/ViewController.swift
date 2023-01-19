//
//  ViewController.swift
//  CodePath_PreWork
//
//  Created by Steven Barbee on 1/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var morePetsLabel: UILabel!
    @IBOutlet weak var petsCounterLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func stepperDidChange(_ sender: UIStepper){
        petsCounterLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapper(_sender: UIButton){
        let year = segment.titleForSegment(at: segment.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolTextField.text!). I am currently in my \(year!) year and I own \(petsCounterLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        print(introduction)
        
        
        
        let action = UIAlertAction(title: "Nice to meet you!" , style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

