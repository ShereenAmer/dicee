//
//  ViewController.swift
//  dicee
//
//  Created by shereen on 7/31/19.
//  Copyright © 2019 shereen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceimageView1: UIImageView!
    @IBOutlet weak var diceImageview2: UIImageView!
  let  imagesArray = ["dice1" , "dice2" ,"dice3" ,"dice4" ,"dice5" ,"dice6" ,]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rollButtonPressed(_ sender: Any) {
        let MAX : UInt32 = 5
        let MIN : UInt32 = 0
        
         let random_number1 = Int(arc4random_uniform(MAX) + MIN)
        let random_number2 = Int(arc4random_uniform(MAX) + MIN)

        diceimageView1.image = UIImage (named: imagesArray[random_number1])
        
        diceImageview2.image = UIImage (named: imagesArray[random_number2])
        
    }
    

}

