//
//  ViewController.swift
//  johnsonpham
//
//  Created by Trinh, Pham Thanh on 6/24/16.
//  Copyright © 2016 Trinh, Pham Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
      override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = defaults.integerForKey("defaultTipRate")
        tipController.selectedSegmentIndex = index
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipController.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)

    }


    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onChange(sender: AnyObject) {
        onEditingChange(sender)
    }
    
}

