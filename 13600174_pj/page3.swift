//
//  page3.swift
//  13600174_fortune_pj
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class page3: UIViewController,AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    
    let soundFilesName = ["กระดิ่ง"]
    
    var checkRandom = true
    var randomImage : Int = 0
    
    let diceArray = ["1","2","3","5","8","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playSound()
        
    }
    
    @IBOutlet weak var imgView2: UIImageView!
    
    
    @IBAction func openPressed(_ sender: Any) {
        
            if checkRandom{
            ProgressHUD.showSuccess("เลขอะไรนะ?")
            audioPlayer.play()
            randomImage = Int(arc4random_uniform(24))
            print(randomImage)
            
            imgView2.image = UIImage(named:diceArray[randomImage])
            checkRandom = false
            
        }
    }
    func playSound() {
        let soundURL = Bundle.main.url(forResource: "กระดิ่ง",withExtension:"mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    
        if checkRandom {
            ProgressHUD.showSuccess("เลขอะไรนะ?")
            audioPlayer.play()
            randomImage = Int(arc4random_uniform(24))
            
            print(randomImage)
            
            imgView2.image = UIImage(named:diceArray[randomImage])
            checkRandom = false
        }
    }
    
}
