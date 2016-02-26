//
//  ViewController.swift
//  VFL Multiple Views
//
//  Created by Randall Mardus on 2/26/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = UIColor.redColor()
        button1.setTitle("Button1", forState: .Normal)
        view.addSubview(button1)
        
    let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = UIColor.blueColor()
        button2.setTitle("Button2", forState: .Normal)
        view.addSubview(button2)
        
        let views = ["button1" : button1, "button2" : button2]
        
        let constraints1 = NSLayoutConstraint.constraintsWithVisualFormat("|-[button1]-[button2]", options: .AlignAllTop, metrics: nil, views: views)
        
        NSLayoutConstraint.activateConstraints(constraints1)
        
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

