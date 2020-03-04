//
//  ViewController.swift
//  MyProject1
//
//  Created by Gilbert, Savannah on 2/24/20.
//  Copyright © 2020 Gilbert, Savannah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//variables
    var name:String = ""
    var userRandomNumber:Int = 0
    var userScore:Int = 0
    var randomComputerNumber:Int = 0
    var computerScore:Int = 0
    var numberPlayerTries:Int = 0
    var showCard:Int = 0

//outlets
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myGreeting: UILabel!
    
    @IBOutlet weak var myScore: UILabel!
    
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    @IBOutlet weak var winningLabel: UILabel!
    
    @IBOutlet weak var myHit: UISwitch!
    
    @IBOutlet weak var showCards: UIButton!
    
    
    //actions
    
    
    @IBAction func mySubmit(_ sender: Any) {
        name = myName.text!
        myGreeting.text = "Let's play, \(name)"
        myName.resignFirstResponder()
    }
    

    @IBAction func myHit(_ sender: Any) {
        
        numberPlayerTries += 1
               if (numberPlayerTries <= 3){
                   if (showCard < 1){
               userScore +=  Int(arc4random_uniform(10) + 1)
               myScore.text = "Player Score: \(userScore)"
                   }
               }
        if (userScore > 21 || numberPlayerTries == 3){
            myHit.isEnabled = false
        }
        
        myHit.isOn = false
    }
    
    @IBAction func showCards(_ sender: Any) {
        myHit.isEnabled = false
        
        computerScoreLabel.text = "Computer Score: \(computerScore)"
        
        if (userScore == computerScore){
            winningLabel.text = "It Was A Tie!"
        }
        else if (userScore > computerScore) {
            winningLabel.text = "You Won!"
        } else {
            winningLabel.text = "The Computer Won"
        }
        
        if (userScore > 21 && computerScore < 21) {
            winningLabel.text = "The Computer Won"
        }
        
        if (computerScore > 21 && userScore < 21) {
            winningLabel.text = "You Won!"
        }
        
        if (computerScore > 21 && userScore > 21) {
            winningLabel.text = "You & The Computer Busted"
        }

        winningLabel.isHidden = false
    }
    
    @IBAction func resetButton(_ sender: Any) {
        userRandomNumber = 0
        userScore = 0
        randomComputerNumber = 0
        computerScore = 0
        numberPlayerTries = 0
        showCard = 0
       
        myScore.text = "Player Score: "

        computerScoreLabel.text = "Computer Score: "

        myHit.isEnabled = true
        
        winningLabel.isHidden = true
         
         computerScore +=  Int(arc4random_uniform(10) + 1)
        
         if (computerScore < 15){
         computerScore +=  Int(arc4random_uniform(10) + 1)
         }
         if (computerScore < 15){
         computerScore +=  Int(arc4random_uniform(10) + 1)
         }
         
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        winningLabel.isHidden = true
        
        computerScore +=  Int(arc4random_uniform(10) + 1)
       
        if (computerScore < 15){
        computerScore +=  Int(arc4random_uniform(10) + 1)
        }
        if (computerScore < 15){
        computerScore +=  Int(arc4random_uniform(10) + 1)
        }
        
        
        
    }


}

