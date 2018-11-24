//
//  ViewController.swift
//  13600174_pj
//
//  Created by Ladapim Vongkedtrachon on 9/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    
    let soundFilesName = ["กระดิ่ง"]
    var checkRandom = true
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgBg: UIImageView!
    
    var randomImage : Int = 0
    var randomImage1 : Int = 0
    
    let diceArray = ["c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c12","c13","c14","c15","c16","c17","c18","c19","c20","c21","c22","c23","c24","c25"]
    let diceArray1 = ["a1","a2","a3","a4","a5",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playSound()

    }

    @IBAction func btnOpenPressed(_ sender: Any) {
        
            if checkRandom {
            ProgressHUD.showSuccess("ขอให้โชคดี")
            audioPlayer.play()
            randomImage = Int(arc4random_uniform(24))
            randomImage1 = Int(arc4random_uniform(5))
            
            print(randomImage)
            
            imgView.image = UIImage(named:diceArray[randomImage])
            imgBg.image = UIImage(named:diceArray1[randomImage1])
            checkRandom = false
            
        }
            }
    func playSound() {
        let soundURL = Bundle.main.url(forResource: "กระดิ่ง",withExtension:"mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if checkRandom {
            ProgressHUD.showSuccess("ขอให้โชคดี")
            audioPlayer.play()
            randomImage = Int(arc4random_uniform(24))
            randomImage1 = Int(arc4random_uniform(5))
            
            print(randomImage)
            
            imgView.image = UIImage(named:diceArray[randomImage])
            imgBg.image = UIImage(named:diceArray1[randomImage1])
            checkRandom = false
        }
    }
}

