//
//  Question.swift
//  Personality Quiz
//
//  Created by Student on 29/07/25.
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
    case lion  = "🦁", cat = "🐈", rabbit = "🐇", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .lion:
            return "A majestic and powerful big cat."
        case .cat:
            return "A small to medium-sized carnivorous mammal."
        case .rabbit:
            return "A small to medium-sized herbivorous mammal."
        case .turtle:
            return "A reptile with a hard shell."
        }
    }
}
