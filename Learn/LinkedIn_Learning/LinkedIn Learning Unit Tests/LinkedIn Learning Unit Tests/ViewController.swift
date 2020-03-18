//
//  ViewController.swift
//  LinkedIn Learning Unit Tests
//
//  Created by Brandan McDevitt on 18/03/2020.
//  Copyright © 2020 BrandanMcDevitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        if let val = Double.init(inputTextField.text!) {
            let tipCalculator = TipCalculator()
            let tip = tipCalculator.calculateTip(amount: val, percentage: 50.0)
            tipLabel.text = "Tip: \(tip)"
        }
    }
}

