//
//  FactBook.swift
//  FunFacts
//
//  Created by Denzel Carter on 9/24/14.
//  Copyright (c) 2014 RushAlert. All rights reserved.
//

import Foundation

struct FactBook {
    
    let factsArray = [
        "Give Someone a Dollar", "Create a Community Service Idea", "Message an old friend",
        "Give someone who really needs it money", "Tell your dad you love him", "Tell your mom you love her",
        "Write a sweet message to someone", "Go like somebody Insta Pictures", "Be a great person today",
        "Tell your significant other you love them", "Send someone flowers", "Buy some chocolate and give it to the cashier",
        "Play the lottery today", "Take someone to see a movie", "Eat lunch with a friend", "Tweet positive things about a person"
    ]
    
    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}