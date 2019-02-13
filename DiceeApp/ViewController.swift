//
//  ViewController.swift
//  DiceeApp
//
//  Created by Shalise Ayromloo on 2/5/19.
//  Copyright © 2019 Shalise Ayromloo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"] //this array will hold the name of all of the dice images and remember that arrays start from 0
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    //create random number genderator and then use that to randomize dice images

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView! //can't just delete it here--have to righ click on the image and click on the x---OR right click on "diceImageView2" and click on Refactor and then rename
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) { //trigered when motion is detected and ended
        //we want to change dice images
        updateDiceImages()  //in simulator, click on hardware and then click on shake gestures to test it out.
    }
    
    func updateDiceImages() {
        //what should happen when the roll button is pressed
        randomDiceIndex1 = Int.random(in: 0 ... 5) //create new whole numbers from 0 to 5 (up to and including 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        // print(randomDiceIndex1)
        
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]) //setting the image property here--everything in between the code bloack of IBAction is executed when we press the Roll Button--putting in in diceArray[] accesses the 2nd element of diceArray which is a string "dice2"
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

