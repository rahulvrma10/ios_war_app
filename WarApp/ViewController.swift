//
//  ViewController.swift
//  WarApp
//
//  Created by Rahul Verma on 6/8/18.
//  Copyright © 2018 Rahul Verma. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomise two numbers
        let leftRandomNumber = arc4random_uniform(13)+2 //0_to_12 + 2
        let rightRandomNumber = arc4random_uniform(13)+2
        print(" \(leftRandomNumber) v/s \(rightRandomNumber)")
        
        //set assest :: asset name "card10" -> similar to getResources().getDrawable(R.layout.card10)
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card13\(rightRandomNumber)")
        
        //Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //update score
            leftScore+=1
            //update label
            leftScoreLabel.text = String(leftScore)
        }else if rightRandomNumber > leftRandomNumber{
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        }else if rightRandomNumber == leftRandomNumber{}
    }
}

