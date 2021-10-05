//
//  QuestionBodyVC.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 06.10.2021.
//

import UIKit

class QuestionBodyVC: UIViewController {
    
    private var questionList = Question.getQuestion()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "\(questionList)"
    }


}
