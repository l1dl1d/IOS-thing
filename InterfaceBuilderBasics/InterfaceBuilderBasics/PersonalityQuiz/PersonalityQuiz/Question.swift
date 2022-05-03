//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Khalid Javeed on 5/3/22.
//

import Foundation
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}
struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case cat = "🐱", cockroach = "🪳", gorilla = "🦍", butterfly = "🦋"
    var definition: String {
        switch self {
        case.cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case.cockroach:
            return "You dislke everything that's soft. You are scary and full of energy."
        case.gorilla:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy competitive activities with your friends."
        case.butterfly:
            return "You are light on your feet and decently athletic. Very average."
        }
    }
}

