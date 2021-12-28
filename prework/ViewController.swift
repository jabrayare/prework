//
//  ViewController.swift
//  prework
//
//  Created by Jibril Mohamed on 12/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let defaults = UserDefaults.standard
        let p1 = defaults.integer(forKey: "p1")
        let p2 = defaults.integer(forKey: "p2")
        let p3 = defaults.integer(forKey: "p3")
        
        print("p1: ", p1)
        print("p2: ", p2)
        print("p3: ", p3)
        
        tipControl.setTitle(String(p1)+"%", forSegmentAt: 0)
        tipControl.setTitle(String(p2)+"%", forSegmentAt: 1)
        tipControl.setTitle(String(p3)+"%", forSegmentAt: 2)

    }
    

    
    @IBAction func calculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let p1 = Double(defaults.integer(forKey: "p1"))
        let p2 = Double(defaults.integer(forKey: "p2"))
        let p3 = Double(defaults.integer(forKey: "p3"))
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        // Get total tip by multiplying tip * tipPercentage.
        
        let tipPercentages = [p1/100, p2/100, p3/100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label.
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount.
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

