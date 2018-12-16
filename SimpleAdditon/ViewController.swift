//
//  ViewController.swift
//  SimpleAdditon
//
//  Created by Kyle Hernandez on 12/15/18.
//  Copyright © 2018 Kyle Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLbl: UILabel!
    
    var numA = Int.random(in: 100 ... 1000)
    var numB = Int.random(in: 100 ... 1000)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLbl.text = "\(String(numA)) + \(String(numB))"
        
        

    }

    
    


}

