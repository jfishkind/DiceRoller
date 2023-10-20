//
//  Die.swift
//  DiceRoller
//
//  Created by Jake Fishkind on 10/17/23.
//

import Foundation

class Die : Hashable
{
    static func == (lhs: Die, rhs: Die) -> Bool {
        return lhs.NumberOfSides == rhs.NumberOfSides
    }
    
    var NumberOfSides: Int
    
    init(NumberOfSides: Int) {
        self.NumberOfSides = NumberOfSides
    }
    
    func RollDie() -> Int
    {
        return Int.random(in: 1...NumberOfSides)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(NumberOfSides)
    }
}
