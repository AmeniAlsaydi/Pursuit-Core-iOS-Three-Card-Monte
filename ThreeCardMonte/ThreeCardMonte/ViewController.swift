//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    lazy var arrayOfCards: [UIButton] = [card1, card2, card3]
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBOutlet weak var winLose: UILabel!
    
    @IBAction func newGame(_ sender: UIButton) {
         for card in arrayOfCards {
         card.setImage(UIImage(named: "cardBackRed"), for: .normal)
         card.isEnabled = true
         }
        winLose.text = "Pick a card, any card!"
         }
    
    
    @IBAction func cardGame(_ sender: UIButton) {
        let cardImages = ["threeCard", "kingCard", "threeCard"]
        let randomCard = cardImages.randomElement() ?? "threeCard"
        

        
        switch sender.tag {
        case 0:
          sender.setImage(UIImage(named: randomCard ), for: .normal)
         
          if randomCard == "kingCard" {
            winLose.text = "You Win!"
          } else if randomCard == "threeCard" {
            winLose.text = "You Lose!"
            }
        case 1:
             sender.setImage(UIImage(named: randomCard ), for: .normal)
            
             if randomCard == "kingCard" {
               winLose.text = "You Win!"
             } else if randomCard == "threeCard" {
               winLose.text = "You Lose!"
               }
        case 2:
             sender.setImage(UIImage(named: randomCard ), for: .normal)
            
             if randomCard == "kingCard" {
               winLose.text = "You Win!"
             } else if randomCard == "threeCard" {
               winLose.text = "You Lose!"
                
               }
        default:
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    }
    
}



//-----------------------
// Current issues:

// Still does not reset properly - Shows them in over lap
// Does not display the winning card ( maybe would work with a loop through the other cases to see which is a king?
//
//-----------------------
