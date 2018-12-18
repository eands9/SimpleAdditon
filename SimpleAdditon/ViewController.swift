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
    
    var numA = 0
    var numB = 0
    var correctAnswer : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }

    @IBAction func checkBtn(_ sender: Any) {
        if userEnteredTxt.text == String(correctAnswer){
            print("You are so smart!")
            nextQuestion()
        }
        else {
            print("Try Again!")
        }
        getAnswer()
        userEnteredTxt.text = ""
    }
    
    func getAnswer() {
        correctAnswer = numA + numB
    }
    func nextQuestion() {
       numA = Int.random(in: 100 ... 1000)
       numB = Int.random(in: 100 ... 1000)
       questionLbl.text = "\(String(numA)) + \(String(numB))"
    
    }
    @IBAction func showBtn(_ sender: Any) {
        getAnswer()
        userEnteredTxt.text = String(correctAnswer)
        
    }
}

