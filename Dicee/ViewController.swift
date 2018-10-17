//
//  ViewController.swift
//  Dicee
//
//  Created by Ian Kosen on 16/10/2018.
//  Copyright © 2018 Ian Kosen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randDiceIdx1: Int = 0;
    var randDiceIdx2: Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages () {
        randDiceIdx1 = Int.random(in: 0 ... 5)
        randDiceIdx2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceArr[randDiceIdx1])
        diceImageView2.image = UIImage(named: diceArr[randDiceIdx2])
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
}

