//
//  VoteVC.swift
//  Coders-Against-Humanity
//
//  Created by ThunderWhatever on 11/1/16.
//  Copyright © 2016 ThunderWhatever. All rights
//

import UIKit

class VoteVC: UIViewController {
    
    
    // VARIABLES: blackCard Text via segue
    @IBOutlet weak var blackCard: UITextView!
    var blackCardContent = Information.Cards.currentBlackCard
    var didVote = false
    
    @IBOutlet weak var RandomCard1: UIButton!
    @IBOutlet weak var RandomCard2: UIButton!
    @IBOutlet weak var RandomCard3: UIButton!

    

    
    // PLAYGROUND: manipulating whitecard data
    @IBOutlet weak var Player1Card: UIButton!
    @IBOutlet weak var displayP1vCount: UILabel!
    var player1CardContent = Information.Cards.selectedWhiteCard
    var votesForPlayer1 = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blackCard.text = blackCardContent
        RandomCard1.setTitle(Information.Cards.choicesArray[0], for: UIControlState.normal)
        RandomCard2.setTitle(Information.Cards.choicesArray[1], for: UIControlState.normal)
        RandomCard3.setTitle(Information.Cards.choicesArray[2], for: UIControlState.normal)
        Player1Card.setTitle(Information.Cards.choicesArray[3], for: UIControlState.normal)
    }
    
    
    
    //PLAYGROUND ACTION: capturing votes
    @IBAction func VotedPlayer1(_ sender: UIButton) {
        if didVote == false {
            votesForPlayer1 += 1
            didVote = true
        }
        Information.Cards.winningCard = sender.currentTitle!
        if Information.Cards.selectedWhiteCard == sender.currentTitle {
            Information.Round.winner = Information.Players.name
        } else {
            let randomIndex = Int(arc4random_uniform(UInt32(Information.Players.otherPlayers.count)))
            Information.Round.winner = Information.Players.otherPlayers[randomIndex]
        }
        performSegue(withIdentifier: "WinnerSegue", sender: sender)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// END OF CLASS: VoteVC
}
