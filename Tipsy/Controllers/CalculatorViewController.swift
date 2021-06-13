//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Slava on 07.02.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//


import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tBrain = Tipsy()
    var result = String()
    var bill: Double = 0.0
    var stepper: Double = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        tBrain.tip(zero: zeroPctButton, ten: tenPctButton, twenty: twentyPctButton, bill: billTextField)
        sender.isSelected = true
        print(sender.isSelected)
        result = sender.currentTitle ?? "0.0"
        print(result)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        sender.minimumValue = 2
        sender.maximumValue = 120
        sender.isContinuous = true
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bill =  Double(billTextField.text!)!
        stepper = Double(splitNumberLabel.text!)!
        
//        let value = tBrain.calculate(ten: tenPctButton, zero: zeroPctButton, twenty: twentyPctButton, bill: billTextField, billV: bill, stepper: stepper)/////
        //        tBrain.calculatePressed(bill: Double(billTextField.text!)!, stepper: Double(splitNumberLabel.text!)!, tip: sender.currentTitle ?? "0.0")
        
    
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.res = tBrain.calculatePressed(bill: bill, stepper: stepper, tip: result)
            destinationVC.ppl = Int(splitNumberLabel.text!)
            destinationVC.tip = tBrain.tipText(ten: tenPctButton, zero: zeroPctButton, twenty: twentyPctButton)
        }
    }
    
}
