//
//  ViewController.swift
//  _CreativeApps_called Mod1_CreativeApp_GamePaigeK
//
//  Created by Tiger Coder on 8/27/20.
//  Copyright © 2020 clc.Paige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//outlets
    @IBOutlet weak var blankO: UIImageView!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var playBt: UIButton!
    @IBOutlet weak var directionsO: UILabel!
    @IBOutlet weak var textO: UILabel!
    @IBOutlet weak var redBg: UILabel!
    @IBOutlet weak var blueBg: UILabel!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var countdown: UILabel!
    @IBOutlet weak var spinning: UILabel!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var spinagain: UILabel!
    @IBOutlet weak var spinScore: UILabel!
    @IBOutlet weak var gameover: UILabel!
    var num = 1
    var numSpin = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textO.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    
//play button
    @IBAction func playButton(_ sender: UIButton) {
        playBt.isHidden = true
        textO.isHidden = true
        directionsO.isHidden = false
        blankO.isHidden = true
        redBg.isHidden = false
        blueBg.isHidden = false
        spinButton.isHidden = false
        bg.image = UIImage(named: "food wheel cropped")
    }
    
//spin button
    @IBAction func letsSpin(_ sender: UIButton) {
   
        numSpin = numSpin + 1
//string interpolation
        spinScore.text = "\(numSpin)/3 spins"
        bg.image = UIImage(named: "food wheel cropped")
        place.text = " "
     //random number 1-10
        num = Int.random(in: 1..<11)
        directionsO.isHidden = true
            spinagain.isHidden = true
        countdown.isHidden = false
        //redBg.isHidden = true
        //blueBg.isHidden = true
       // spinButton.isHidden = true
        spinning.isHidden = false
        countdown.text = "3"
        countdown.backgroundColor = UIColor.white
    //constant
        let secondsToDelay = 1.0
    //delay
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
            self.countdown.text = "4"
            DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
                    self.countdown.text = "1"
                DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
                             self.spinning.isHidden = true
                             self.countdown.isHidden = true
                    if self.numSpin > 0 {
                    self.spinagain.isHidden = false
                    }
                    self.bg.image = UIImage(named: "plate")
            if self.num == 1
            {
                self.place.text = "Dunkin"
            }
            if self.num == 2
            {
                self.place.text = "Starbucks"
            }
            if self.num == 3
            {
                self.place.text = "Panera"
            }
            if self.num == 4
            {
               self.place.text = "Jimmy Johns"
            }
            if self.num == 5
            {
               self.place.text = "Subway"
            }
            if self.num == 6
            {
               self.place.text = "Jersey Mikes"
            }
            if self.num == 7
            {
               self.place.text = "Chipotle"
            }
            if self.num == 8
            {
               self.place.text = "Noodles & Company"
            }
            if self.num == 9
            {
               self.place.text = "Chick-fil-a"
            }
            if self.num == 10
            {
               self.place.text = "Home"
            }
            if self.numSpin == 3 {
                self.spinButton.isHidden = true
                self.blueBg.isHidden = true
                self.redBg.isHidden = true
                self.spinagain.text = "You Are Out Of Spins!"
                self.gameover.isHidden = false
                }
          }
          }
    }

  }
    
    
}
    
    
    


