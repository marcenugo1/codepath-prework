//
//  ViewController.swift
//  Prework
//
//  Created by marcela nunez on 7/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipPercentages = [0.15,0.18,0.2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //let tipPercentages = [0.15,0.18,0.2]
    
        let value = tipPercentages[tipControl.selectedSegmentIndex]
            
        //let tipPercentages =  value / 100
        //let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let tip = Double(bill) * Double(value)
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func cal(_ sender: Any) {
        
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //let tipPercentages = [0.15,0.18,0.2]
    
        let value = tipPercentages[tipControl.selectedSegmentIndex]
            
        //let tipPercentages = value / 100
        //let tip = bill * tipPercentage0s[tipControl.selectedSegmentIndex]
        
        let tip = Double(bill) * Double(value)
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        // Access UserDefaults
        let defaults = UserDefaults.standard
        
        let doubletip1 = defaults.double(forKey: "tip1UserData")
        let doubletip2 = defaults.double(forKey: "tip2UserData")
        let doubletip3 = defaults.double(forKey: "tip3UserData")
        
        
        if(doubletip1 != 0){
            //doubletip1 = doubletip1 / 100
            tipControl.removeSegment(at: 0, animated: true)
            tipControl.insertSegment(withTitle: String(format: "%g",doubletip1) + "%", at: 0, animated: true)
            tipPercentages[0] = doubletip1 / 100
            tipControl.selectedSegmentIndex = 0
           
        }
        
        if(doubletip2 != 0){
            //doubletip2 = doubletip2 / 100
            tipControl.removeSegment(at: 1, animated: true)
            tipControl.insertSegment(withTitle: String(format: "%g",doubletip2) + "%", at: 1, animated: true)
            tipPercentages[1] = doubletip2 / 100
            tipControl.selectedSegmentIndex = 1
        }
        
        if(doubletip3 != 0){
            //doubletip3 = doubletip3 / 100
            tipControl.removeSegment(at: 2, animated: true)
            tipControl.insertSegment(withTitle: String(format: "%g",doubletip3) + "%", at: 2, animated: true)
            tipPercentages[2] = doubletip3 / 100
            tipControl.selectedSegmentIndex = 2
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}

