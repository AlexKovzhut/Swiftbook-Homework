//
//  QuestionBodyVC.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 06.10.2021.
//

import UIKit

class DevelopmentAnswerVC: UIViewController {
    
    private let answerTextView: UITextView = {
        let textView = UITextView()
        
        textView.backgroundColor = .white
        
        return textView
    }()
    
    var answer: DevelopmentQuestion?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(answerTextView)
        
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        answerTextView.frame = view.bounds
        
    }


}
