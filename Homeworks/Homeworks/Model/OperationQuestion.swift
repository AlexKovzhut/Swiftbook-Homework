//
//  OperationQuestion.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 06.10.2021.
//

import Foundation

struct OperationQuestion {
    let title: String
    let body: String
}

extension OperationQuestion {
    static func getQuestion() -> [OperationQuestion] {
        [
            OperationQuestion(title: "Ruiz", body: "7 Elements (Original Mix)"),
            OperationQuestion(title: "Wincent", body: "Red Eye (Original Mix)"),
            OperationQuestion(title: "E-Spectro", body: "End Station (Original Mix)"),
            OperationQuestion(title: "Ann", body: "Phasma (Konstantin Yoodza Remix)"),
            OperationQuestion(title: "Djokovic", body: "Delusion (Original Mix)"),
            OperationQuestion(title: "Baptiste", body: "Mycelium (Original Mix)"),
            OperationQuestion(title: "8", body: "Fingerprint (Original Mix)"),
            OperationQuestion(title: "Vaughn", body: "Pink Is My Favorite Color (Alex Stein Remix)"),
            OperationQuestion(title: "Gallya", body: "Badmash (Original Mix)"),
            OperationQuestion(title: "Devine", body: "Nightmare (Original Mix)")
        ]
    }
}

