//
//  ViewController.swift
//  DiceeApp
//
//  Created by Shalise Ayromloo on 2/5/19.
//  Copyright © 2019 Shalise Ayromloo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    //create random number genderator and then use that to randomize dice images

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView! //can't just delete it here--have to righ click on the image and click on the x---OR right click on "diceImageView2" and click on Refactor and then rename
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //what should happen when the roll button is pressed
        randomDiceIndex1 = Int.random(in: 0 ... 5) //create new whole numbers from 0 to 5 (up to and including 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(randomDiceIndex1)
    }
    
}

