//
//  ViewController.swift
//  MemeMe
//
//  Created by ALCALY LO on 12/7/17.
//  Copyright © 2017 ALCALY LO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label : UILabel!
    var label2 : UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
      // Label2
        let label2 = UILabel()
        label2.frame = CGRect.init(x: 150, y: 180, width: 60, height: 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
 
        
        // Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        decrementButton.setTitle("-", for: .normal)
        decrementButton.setTitleColor(UIColor.cyan, for: .normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    func switchColor() { if self.view.backgroundColor == UIColor.white {
        self.view.backgroundColor = UIColor.red
    }
    else {
        self.view.backgroundColor = UIColor.white
        }
    }
 

    
    @objc func decrementCount() {
        switchColor()
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        //self.label2.text = "\(self.count)"
    }
    
    
    @objc func incrementCount() {
        
        switchColor()
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        //self.label2.text = "\(self.count)"
    }
    
    
}

