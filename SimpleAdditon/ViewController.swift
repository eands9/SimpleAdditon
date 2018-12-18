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
    @IBOutlet weak var userEnteredTxt: UITextField!
    
    var numA = Int.random(in: 100 ... 1000)
    var numB = Int.random(in: 100 ... 1000)
    var correctAnswer : Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLbl.text = "\(String(numA)) + \(String(numB))"
        
        

    }

    @IBAction func checkBtn(_ sender: Any) {
        if userEnteredTxt.text == String(correctAnswer){
            print("U are so smart!")
        }
        else {
            print("Try Again!")
            
        }
        
        getAnswer()
        print(correctAnswer)
        
        userEnteredTxt.text = ""
    
        
        
    }
    
    
    func getAnswer() {
        correctAnswer = numA + numB
        
      
        
        
       
        
        
    }
    


}

