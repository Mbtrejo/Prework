//
//  ViewController.swift
//  Prework
//
//  Created by Marlon Trejo on 8/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let Bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = tipPercentages[tipControl.selectedSegmentIndex] * Bill
        
        let total = Bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

