//
//  main.swift
//  RockPaperScissors
//
//  Created by Arken Sarsenov on 01.12.2021.
// //Rock, Paper, Scissors

import Foundation

enum Sign: CaseIterable{
    case rock
    case paper
    case scissors
}


func computerSign() -> Sign {
    let a = Int.random(in: 0...2)
    if a == 0 {
        return .rock
    }else if a == 1 {
        return .paper
    }else {
        return .scissors
    }
}
print("type rock: 0,papper: 1 or scissors: 2")




var input = Int(readLine()!)!
let myChoice = Sign.allCases[input]
print("my enter: \(myChoice)")
let computerChoice = computerSign()
print("computer choice: \(computerChoice)")


func gameResult(me: Sign, computer: Sign){
    switch (me,  computer) {
    case (.rock, .rock):     print("draw")
    case (.rock, .paper):    print("lose")
    case (.rock, .scissors): print("win")
        
    case (.paper, .rock):     print("win")
    case (.paper, .paper):    print("draw")
    case (.paper, .scissors): print("lose")
        
    case (.scissors, .rock):     print("lose")
    case (.scissors, .paper):    print("win")
    case (.scissors, .scissors): print("draw")
    }

}
gameResult(me: myChoice, computer: computerChoice)
