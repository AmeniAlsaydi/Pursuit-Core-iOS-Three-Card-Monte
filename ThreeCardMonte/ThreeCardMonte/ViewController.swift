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
    
    @IBAction func cardGame(_ sender: UIButton) {
        let cardImages = ["threeCard", "kingCard", "threeCard"]
        let shuffledCards = cardImages.shuffled()
        

        
        switch sender.tag {
        case 0:
          sender.setImage(UIImage(named: shuffledCards[0]), for: .normal)
          if shuffledCards[0] == "kingCard" {
            winLose.text = "You Win!"
          } else {
            winLose.text = "You Lose!"
            }
        case 1:
            sender.setImage(UIImage(named: shuffledCards[1]), for: .normal)
            if shuffledCards[1] == "kingCard" {
              winLose.text = "You Win!"
            } else {
              winLose.text = "You Lose!"
              }
        case 2:
            sender.setImage(UIImage(named: shuffledCards[2]), for: .normal)
            if shuffledCards[2] == "kingCard" {
              winLose.text = "You Win!"
            } else {
              winLose.text = "You Lose!"
              }
        default:
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
        }
        
        // disable other cards
//        for card in arrayOfCards {
//            card.isEnabled = false
//        }
    }
    
//    @IBAction func newGame(_ sender: UIButton) {
//        // sender.tag
//        sender.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
//    }
    
}

