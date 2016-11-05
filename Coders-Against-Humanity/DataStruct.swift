//
//  DataStruct.swift
//  Coders-Against-Humanity
//
//  Created by Ian McGonigle on 11/3/16.
//  Copyright © 2016 Ji. All rights reserved.
//

struct Information {
    
    struct Scores {
        static var one = 0
        static var two = 0
        static var three = 0
        static var four = 0
    }
    
    struct Players {
        
        static var name = String()
        static let otherPlayers = ["Hillary", "Donald", "Brobama"]
        
    }
    
    struct Cards {
        
        static var whiteCards = [String]()
        static var blackCards = [String]()
        
        static var whiteCounter = Int()
        static var blackCounter = Int()
        
        static var playersCards = [String]()
        
        static var currentBlackCard = String()
        
        static var selectedWhiteCard = String()
        
        static var choicesArray = [String]()
        
        static var winningCard = String()
        
    }
    
    struct Round {
        
        static var winner = String()
        
    }
    
}
