//
//  ViewController.swift
//  Quiz
//
//  Created by Henngel Mojica on 1/31/18.
//  Copyright © 2018 Henngel Mojica. All rights reserved.
//

// Adding comments for
// Testing Git workfload

import UIKit

class ViewController: UIViewController {
    
    // properties to connect to UILabels in storyboard
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    // The Model layer
        // Array of Strings, for questions
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
        // Array of Strings, for answers
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
        // index will keep track of what question the user is on
    var currentQuestionIndex: Int = 0
    
    // Actions to be triggered on buttons tap in storyboard
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

