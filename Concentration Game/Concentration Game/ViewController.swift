//
//  ViewController.swift
//  Concentration Game
//
//  Created by Heba Omar94 on 21/04/2024.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            FlipNumber.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var FlipNumber: UILabel!
    
    var emojiChoices = ["👿","👻","👿","👻"]
    
    @IBOutlet var carddButtons: [UIButton]!
    
    @IBAction func PressEmoj(_ sender: UIButton) {
        flipCount += 1
     
        if let cardNumber = carddButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print ("chosen card was not in card")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    
    
    func flipCard(withEmoji emoji:String, on button: UIButton) {
      
        
        if button.currentTitle == emoji {
           
            button.setTitle("", for: .normal)
            
            button.backgroundColor = .orange
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = .white
        }
    }



}

