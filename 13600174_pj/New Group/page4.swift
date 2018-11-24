//
//  page4.swift
//  13600174_fortune_pj
//
//  Created by kengserch on 17/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class page4 : UIViewController,AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    let soundFilesName = ["กระดิ่ง"]
    
    @IBOutlet weak var LabelTime: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score : Int = 0
    var selectedAnswer: Int = 0
    
    var timer = Timer()
    var timeCount = 40  //1 mins
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        updateQuestion()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
        LabelTime.text = String(timeCount)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(page4.processTime), userInfo: nil, repeats: true)
    }
    @objc func processTime() {
        
        if timeCount > 0 {
            timeCount -= 1
            LabelTime.text = String(timeCount)
        }else{
            timer.invalidate()
        }
        
        print(timeCount)
        LabelTime.text = String(timeCount) //casting
        //"\(timeCount)"
    }
    
    @IBAction func ansButton(_ sender: UIButton) {
        
        audioPlayer.play()
        if sender.tag == selectedAnswer {
            
            score += 2
            ProgressHUD.showSuccess (" ถูกต้องนะครับ ^^ ")
            
        }else{
            
            ProgressHUD.showError (" ผิดนะครับ TT ")
            
        }
        
        questionNumber += 1
        updateQuestion()
        
    }
    func playSound() {
        let soundURL = Bundle.main.url(forResource: "กระดิ่ง",withExtension:"mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        
    }
    func updateQuestion(){
        
        if questionNumber <= allQuestions.list.count - 1{
            image.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
        }else {
            let alert = UIAlertController(title: "สุดยอดไปเลย", message: "คุณเล่นเกมตอบคำถามจบแล้ว , กด  Restart เพื่อเล่นอีกรอบ ", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
     }
    func updateUI(){
        point.text = "Point: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width/10) * CGFloat(questionNumber + 1)
        
    }
    
    func restartQuiz(){
        
        questionNumber = 0
        updateQuestion()
        timeCount = 40
        
    }
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

