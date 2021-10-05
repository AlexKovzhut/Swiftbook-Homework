//
//  Question.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 05.10.2021.
//

import Foundation

struct Question {
    let title: String
}

extension Question {
    static func getQuestion() -> [Question] {
        [
            Question(title: "Question"),
            Question(title: "Question"),
            Question(title: "Question"),
            Question(title: "Question")
        ]
    }
}
