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
    var blackCardContent : String!

    // PLAYGROUND: manipulating whitecard data
    @IBOutlet weak var Player1Card: UIButton!
    
    
    
    @IBOutlet weak var displayP1vCount: UILabel!
    var player1CardContent : String!
    var votesForPlayer1 = Int()
    var voteFormatted = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        blackCard.text = blackCardContent
        Player1Card.setTitle(player1CardContent, for: UIControlState.normal)
    }
    
    // FUNCTION: Send data thru segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let winnerVC : WinnerVC = segue.destination as! WinnerVC
        winnerVC.blackCardContent = blackCardContent
        winnerVC.whiteCardContent = player1CardContent
        winnerVC.voteCount = votesForPlayer1
    }
    
    //PLAYGROUND ACTION: capturing votes
    @IBAction func VotedPlayer1(_ sender: UIButton) {
        votesForPlayer1 += 1
        voteFormatted = String(votesForPlayer1)
        displayP1vCount.text = voteFormatted
        performSegue(withIdentifier: "WinnerSegue", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// END OF CLASS: VoteVC
}
