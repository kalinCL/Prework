//
//  ViewController.swift
//  Prework
//
//  Created by Kalin Chang Lee on 8/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControlSlide: UISlider!
    @IBOutlet weak var splitControl: UISegmentedControl!

    @IBOutlet weak var tipPercDisplay: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var amountPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
    }

    @IBAction func changeTipDisplay(_ sender: Any) {
        tipPercDisplay.text = String(format: "%.1f%%", round(tipControlSlide.value))
    }
    
    func calculate() {
        // Initial Values:
        var bill = Double(800.00)
        var tipPercentage = Double(15)
        var split = Double(1)
        // Values from User:
        bill = Double(billAmountTextField.text!) ?? 0
        tipPercentage = Double(round(tipControlSlide.value))
        split = Double((splitControl.selectedSegmentIndex) + 1)
        
        let tip = bill * (tipPercentage/100)
        let total = bill + tip
        let perPerson = total / split
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        amountPerPersonLabel.text = String(format: "$%.2f", perPerson)
    }
    
    @IBAction func changeBillCalculate(_ sender: Any) {
        calculate()
    }
    
    @IBAction func changeTipCalculate(_ sender: Any) {
        calculate()
    }
    
    @IBAction func changeSplitCalculate(_ sender: Any) {
        calculate()
    }
    
    
    
    
    
}
    
    
    
    
    
//    @IBAction func tipSliderAmount(_ sender: Any) {
//    }
    
  //  @IBAction func calculateTip(_ sender: Any) {
//        let bill = Double(billAmountTextField.text!) ?? 0
 //       let tipPercentages = [0.15, 0.18, 0.2]
  //      let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
  //      let total = bill + tip
  //      tipAmountLabel.text = String(format: "$%.2f", tip)
   //     totalLabel.text = String(format: "$%.2f", total)
//    }
    
//}
