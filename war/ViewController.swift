//
//  ViewController.swift
//  war
//
//  Created by Mark Morris on 5/25/15.
//  Copyright (c) 2015 Mark Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first card
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var firstCardString:String = cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        firstCardImageView.image = UIImage(named: firstCardString)
        
        // Randomize a number for the second card
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var secondCardString:String = cardNamesArray[secondRandomNumber]
        
        // Set the second card image view to the asset corresponding to the randomized number
        secondCardImageView.image = UIImage(named: secondCardString)
        
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {
            // TODO: numbers are equal
        }
        else {
            enemyScoreTotal += 1
            enemyScore.text = String(enemyScoreTotal)
        }
        
    }

    @IBAction func resetTapped(sender: UIButton) {
        playerScoreTotal = 0
        enemyScoreTotal = 0
        playerScore.text = String(playerScoreTotal)
        enemyScore.text = String(enemyScoreTotal)
    }
}

