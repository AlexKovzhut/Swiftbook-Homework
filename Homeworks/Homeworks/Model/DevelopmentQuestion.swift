//
//  Question.swift
//  Homeworks
//
//  Created by Alexander Kovzhut on 05.10.2021.
//

import Foundation

struct DevelopmentQuestion {
    let title: String
    let body: String
}

extension DevelopmentQuestion {
    static func getQuestion() -> [DevelopmentQuestion] {
        [
            DevelopmentQuestion(title: "Alberto", body: "7 Elements (Original Mix)"),
            DevelopmentQuestion(title: "Dave", body: "Red Eye (Original Mix)"),
            DevelopmentQuestion(title: "E-Spectro", body: "End Station (Original Mix)"),
            DevelopmentQuestion(title: "Edna", body: "Phasma (Konstantin Yoodza Remix)"),
            DevelopmentQuestion(title: "Ilija", body: "Delusion (Original Mix)"),
            DevelopmentQuestion(title: "John", body: "Mycelium (Original Mix)"),
            DevelopmentQuestion(title: "Lan", body: "Fingerprint (Original Mix)"),
            DevelopmentQuestion(title: "Mac", body: "Pink Is My Favorite Color (Alex Stein Remix)"),
            DevelopmentQuestion(title: "Metodi", body: "Badmash (Original Mix)"),
            DevelopmentQuestion(title: "Veerus", body: "Nightmare (Original Mix)")
        ]
    }
}
