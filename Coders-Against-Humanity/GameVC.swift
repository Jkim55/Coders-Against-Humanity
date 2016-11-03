//
//  GameVC.swift
//  Coders-Against-Humanity
//
//  Created by ThunderWhatever on 11/1/16.
//  Copyright © 2016 ThunderWhatever. All rights
//

import UIKit

// PROTOTYPE: card
struct Cards {
    var blackCardContent : String!
    var whiteCardsContent : [String]!
}

// CLASS: GAME VC
class GameVC: UIViewController {
    @IBOutlet weak var blackCard: UITextView!
    @IBOutlet var whiteCards: [UIButton]!
    
    //VARIABLES: used within view
    var cards = Cards()
    var selectedWhiteCard = String()
    var blackCardsArray = [String]()
    var whiteCardsArray = [String]()
    var selectedBlackCard = String()
    var selectedWhiteCards = [String]()
    var blackCounter = Int()
    var whiteCounter = Int()
    
    //PLAYGROUNG VARIABLES
    // TEMP VARIABLES: to log results from button click
    @IBOutlet weak var pickedCardText: UILabel!
    @IBOutlet weak var pickedCardTag: UILabel!
    
    //TO DO: a function to capitalize white cards
    override func viewDidLoad() {
        super.viewDidLoad()
        dealBlackCard()
        dealWhiteCards()
        //Injecting in black & white card text
        cards = 
            Cards(
                blackCardContent: selectedBlackCard,
                whiteCardsContent: selectedWhiteCards
            )
        dealCards()
        print("IN GAME VC", whiteCardsArray)
    }

    func dealCards () {
        blackCard.text = cards.blackCardContent
        
        for i in 0..<whiteCards.count{
            whiteCards[i].setTitle(
                cards.whiteCardsContent[i],
                for: UIControlState.normal
            )
            whiteCards[i].tag = i + 1
            whiteCards[i].addTarget(self, action: #selector(self.addIBAction), for: UIControlEvents.touchUpInside)
            
        }
    }
    
    //PLAYGROUND: to see what i can do with UIBUTTON arg and .tag property
     func addIBAction(_ sender: UIButton!) {
        selectedWhiteCard = sender.currentTitle!
        performSegue(withIdentifier: "VoteSegue", sender: sender)
    }
    
    func dealBlackCard() {
        print(blackCardsArray)
        selectedBlackCard = blackCardsArray[blackCounter]
        blackCounter += 1
    }

    func dealWhiteCards() {
        var whiteCards = [String]()
        for _ in 0...6{
            whiteCards.append(whiteCardsArray[whiteCounter])
            whiteCounter += 1
        }
        selectedWhiteCards = whiteCards
    }
    
    
    // FUNCTION: Send data thru segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let voteVC : VoteVC = segue.destination as! VoteVC
        voteVC.blackCardContent = cards.blackCardContent
        voteVC.player1CardContent = selectedWhiteCard
    }
    
    //ACTION: Return to login page
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// END OF CLASS: GameVC
}
