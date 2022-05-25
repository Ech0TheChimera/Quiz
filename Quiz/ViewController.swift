//
//  ViewController.swift
//  Quiz
//
//  Created by Aaron Whittington on 5/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions:[String] = [
    "What is 7+7?",
    "What is the capitol of Vermont?",
    "What is cognac made from?"
    ]
    let anwswers:[String] = [
    "14",
    "Monteplier",
    "Grapes"
    ]
    var currentQuestionIndex:Int = 0
    
    @IBAction func showNextQuestion(_sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex >= questions.count {
            currentQuestionIndex = 0
        }
        let question:String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_sender: UIButton) {
        let answer:String = anwswers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

