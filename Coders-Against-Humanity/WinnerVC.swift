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
    @IBOutlet weak var whiteCard: UITextView!
    @IBOutlet weak var numOfVotes: UILabel!
    
    var blackCardContent : String!
    var whiteCardContent : String!
    var voteCount : Int!
    var finalCardContent: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let voteCountString = "\(voteCount)"
        numOfVotes.text = voteCountString
        winnerCard(whiteCard: whiteCardContent, blackCard: blackCardContent)
        blackCard.text = finalCardContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func winnerCard(whiteCard: String, blackCard: String) {
    
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
