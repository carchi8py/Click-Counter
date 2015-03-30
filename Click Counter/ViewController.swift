//
//  ViewController.swift
//  Click Counter
//
//  Created by Chris Archibald on 3/29/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // label 2
        var label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(100, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents:
            UIControlEvents.TouchUpInside)
        
        //Button 2
        
        var button2 = UIButton()
        button2.frame = CGRectMake(250, 250, 60, 60)
        button2.setTitle("Down", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: "downCount", forControlEvents:
            UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.greenColor()
    }
    
    func downCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.yellowColor()
    }
}

