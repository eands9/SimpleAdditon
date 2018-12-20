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
    var numC = 0
    var numD = 0
    var correctAnswer : Int = 0
    var isShow : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    @IBAction func checkBtn(_ sender: Any) {
        if userEnteredTxt.text == String(correctAnswer) && isShow == false{
            
            nextQuestion()
        }
        else if isShow == true {
            nextQuestion()
        }
        else {
            
        }
        getAnswer()
        userEnteredTxt.text = ""
    }
    func getAnswer() {
        correctAnswer = numA + numB + numC + numD
    }
    func nextQuestion() {
       numA = Int.random(in: 10 ..< 100)
       numB = Int.random(in: 10 ..< 100)
       numC = Int.random(in: 10 ..< 100)
       numD = Int.random(in: 10 ..< 100)
       questionLbl.text = "\(String(numA)) + \(String(numB)) + \(String(numC)) + \(String(numD))"
    }
    @IBAction func showBtn(_ sender: Any) {
        getAnswer()
        userEnteredTxt.text = String(correctAnswer)
        isShow = true
    }
}

