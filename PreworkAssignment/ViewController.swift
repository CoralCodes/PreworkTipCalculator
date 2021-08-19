//
//  ViewController.swift
//  PreworkAssignment
//
//  Created by Coral Hidalgo on 8/17/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var splitAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var splitTotalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SplitCalculation(_ sender: Any) {
        // Variables for data input by user
        let bill = Double(billAmount.text!) ?? 0
        let split = Double(splitAmount.text!) ?? 1

        //calculate Tip and Total after tip
        
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Split the bill between people
        let splitTotal = total/split
        
        
        // Display and Update Info
       tipAmount.text = String (format: "$%.2f", tip)
        billTotalLabel.text = String (format: "$%.2f", total)
        splitTotalLabel.text = String (format: "$%.2f", splitTotal)
     }
    
}

