//
//  WinnerVC.swift
//  Coders-Against-Humanity
//
//  Created by ThunderWhatever on 11/1/16.
//  Copyright © 2016 ThunderWhatever. All rights
//
import Foundation
import UIKit

class WinnerVC: UIViewController {
    
    @IBOutlet weak var blackCard: UITextView!
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var player: UILabel!
    @IBOutlet weak var hillary: UILabel!
    @IBOutlet weak var donald: UILabel!
    @IBOutlet weak var brobama: UILabel!
    
    
    var blackCardContent = Information.Cards.currentBlackCard
    var whiteCardContent = Information.Cards.winningCard
    var voteCount : Int!
    var finalCardContent: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winningCard(whiteCard: whiteCardContent, blackCard: blackCardContent)
        blackCard.text = finalCardContent
        print(finalCardContent)
        winner.text = Information.Round.winner + " Wins!"
        updateScore(winner: Information.Round.winner)
        player.text = Information.Players.name + ": " + String(Information.Scores.one)
        hillary.text = "Hillary: " + String(Information.Scores.two)
        donald.text = "Donald: " + String(Information.Scores.three)
        brobama.text = "Brobama: " + String(Information.Scores.four)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateScore(winner: String) {
        switch winner {
        case Information.Players.name:
            Information.Scores.one += 1
            break
        case "Hillary":
            Information.Scores.two += 1
            break
        case "Donald":
            Information.Scores.three += 1
            break
        case "Brobama":
            Information.Scores.four += 1
            break
        default:
            print("WAAAAAAAT")
        }
    }
    
    func winningCard(whiteCard: String, blackCard: String) {
    
        var blackCardSplit = blackCard.components(separatedBy: "_")
        if blackCardSplit.count > 1 {
            finalCardContent = blackCardSplit.joined(separator: whiteCard)
        }
        else {
            finalCardContent = blackCardSplit[0] + " " + whiteCard
        }
        
    }

// END OF CLASS: LoginVC
}
