//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Mason Hendry on 7/15/21.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses : Int
    let incorrectGuesses : Int
    
    var percentage : Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
