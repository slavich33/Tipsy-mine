//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Slava on 08.02.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

struct Tipsy {
    
    var sw: Switchc?
    
    func calculatePressed(bill: Double, stepper: Double, tip: String) -> Double {

        var res: Double
        if tip == "0%" {
            res = (bill  / stepper ) + ((Double(tip) ?? 0.0 * bill  ) / stepper)
            print(res)
            
        } else if tip == "10%" {
            res = (bill  / stepper) + ((Double(tip) ?? 0.1 * bill   ) / stepper)
            print(res)
        } else {
            res = (bill  / stepper ) + ((Double(tip) ?? 0.2 * bill  ) / stepper)
            print(res)
        }
       return res
    }

    func tip(zero: UIButton, ten: UIButton, twenty: UIButton, bill: UITextField){
        bill.becomeFirstResponder()
        zero.isSelected = false
        ten.isSelected = false
        twenty.isSelected = false
        bill.endEditing(true)
    }
    
    func calculate(ten: UIButton, zero: UIButton, twenty: UIButton, bill: UITextField, billV: Double, stepper: Double) -> Double {
        var res: Double
        
        if zero.isSelected {
            res = (billV  / stepper ) + ((0.0 * billV  ) / stepper)
            print(res)
            
        } else if ten.isSelected {
            res = (billV  / stepper) + ((0.1 * billV   ) / stepper)
            print(res)
        } else {
            res = (billV  / stepper ) + ((0.2 * billV  ) / stepper)
            print(res)
        }
        return res
    }
 
    func tipText(ten: UIButton, zero: UIButton, twenty: UIButton) -> String {
        var text: String
        if zero.isSelected {
            text =  zero.currentTitle ?? "err"
            
        } else if ten.isSelected {
            text =  ten.currentTitle ?? "err"
        } else {
            text =  twenty.currentTitle ?? "err"
        }
        return text
    }
}
   
//MARK: - All about practice!

//    func switchButton(sender: UIButton) -> (()) {
//
//        let zero1 = sw?.zero ?? UIButton()
//        let ten1 = sw?.ten ?? UIButton()
//        let twenty1 = sw?.twenty ?? UIButton()
//        let bill1 = sw?.bill ?? UITextField()
//
//        func button(zero: UIButton, ten: UIButton, twenty: UIButton, bill: UITextField){
//        switch sender{
//            case zero :
//                zero.isSelected = true
//                ten.isSelected = false
//                twenty.isSelected = false
//                bill.endEditing(true)
//            case twenty :
//                ten.isSelected = false
//                zero.isSelected = false
//                twenty.isSelected = true
//                bill.endEditing(true)
//            case ten:
//                twenty.isSelected = false
//                zero.isSelected = false
//                ten.isSelected = true
//                bill.endEditing(true)
//        default:
//print("error")
//        }
//
//
//        }
//        button(zero: zero1, ten: ten1, twenty: twenty1, bill: bill1)
//
//
//        switch sender {
//        case zeroPctButton:
//            zeroPctButton.isSelected = true
//            tenPctButton.isSelected = false
//            twentyPctButton.isSelected = false
//            billTextField.endEditing(true)
//        case twentyPctButton:
//            tenPctButton.isSelected = false
//            zeroPctButton.isSelected = false
//            twentyPctButton.isSelected = true
//            billTextField.endEditing(true)
//        case tenPctButton:
//            twentyPctButton.isSelected = false
//            zeroPctButton.isSelected = false
//            tenPctButton.isSelected = true
//            billTextField.endEditing(true)
//        default:
//            print("error")
//        }



//    func getResVal() -> Double {
    //        return calculate(ten: sw?.ten, zero: sw?.zero, twenty: sw?.twenty, bill: sw?.bill, billV: sw?.billV, stepper: sw?.billV)
    //    }


//if sw?.zero.isSelected {
//        print((sw?.billV ?? 0.0 / sw?.stepper ?? 0.0) + ((0.0 * sw?.billV ?? 0.0  )) / sw?.stepper ?? 0.0)
////                print(splitNumberLabel.text!)
//    } else if sw?.ten.isSelected ?? false  {
//        print((sw?.billV ?? 0.0  / sw?.stepper ?? 0.0) + ((0.1 * sw?.billV ?? 0.0  )) / sw?.stepper ?? 0.0)
//    } else {
////                print(splitNumberLabel.text!)
//        print((sw?.billV ?? 0.0 / sw?.stepper ?? 0.0) + ((0.2 * sw?.billV ?? 0.0  )) / sw?.stepper ?? 0.0)
//    }
