//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Slava on 07.02.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var res : Double?
    var ppl: Int?
    var tip: String?
    
    override func viewDidLoad() {
        settingsLabel.text = String(format: "%.2f", res ?? 0.0)
        totalLabel.text = String("Split between \(ppl ?? 0) people, with \(tip ?? "zero") tip.")
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
