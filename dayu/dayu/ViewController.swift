//
//  ViewController.swift
//  dayu
//
//  Created by Xinger on 15/8/27.
//  Copyright (c) 2015年 Xinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        var usb = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    }
    
    
    @IBAction func jump1(sender: AnyObject) {
    }

    @IBAction func jump2(sender: AnyObject) {
        self.presentViewController(LeftMenuViewController(), animated: true, completion: {})
    }

}

