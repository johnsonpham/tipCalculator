//
//  settingViewController.swift
//  johnsonpham
//
//  Created by Trinh, Pham Thanh on 6/26/16.
//  Copyright © 2016 Trinh, Pham Thanh. All rights reserved.
//

import UIKit

class settingViewController: UIViewController {
    
    
    
    @IBOutlet weak var settingTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = defaults.integerForKey("defaultTipRate")
        settingTip.selectedSegmentIndex = index
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(settingTip.selectedSegmentIndex, forKey: "defaultTipRate")
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
