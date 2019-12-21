//
//  ViewController.swift
//  The Ninja Education App
//
//  Created by Will Micol on 2/1/18.
//  Copyright © 2018 Will Micol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressView: UIView!
    
    @IBOutlet weak var picView: UIImageView!
    @IBOutlet weak var flagView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    //outlet for buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    


    @IBAction func QuestionReturn(_ sender: UIStoryboardSegue) {
    }
    
    let allQuestion = QuestionBank()
    var questionNumber = Int(arc4random_uniform(10))
    var endCounter: Int = 0;
    var selectedAnswer: Int = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        optionA.layer.cornerRadius = 10
        optionB.layer.cornerRadius = 10
        optionC.layer.cornerRadius = 10
        optionD.layer.cornerRadius = 10
        questionNumber = Int(arc4random_uniform(UInt32(allQuestion.list.count)))
        print("hello")
        updateQuestion()
        updateUI()
        print(QuestionBank().list.count)
    }
    @IBAction func unwindSeque(_ sender: UIStoryboardSegue){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
 
        if sender.tag == selectedAnswer{
            if endCounter + 1 < 10 {
                questionNumber = Int(arc4random_uniform(UInt32(allQuestion.list.count)))
                print(questionNumber)
            print("Correct")
            self.performSegue(withIdentifier: "correct",sender: self)
           endCounter += 1
                updateQuestion()
            } else {
                 self.performSegue(withIdentifier: "end",sender: self)
            }
            
        } else {
            self.performSegue(withIdentifier: "incorrect",sender: self)
            print("Wrong")
        }
       
    }
    

    
    
   func updateQuestion(){
            picView.image = UIImage(named:(allQuestion.list[questionNumber].questionImage))
            questionLabel.text = allQuestion.list[questionNumber].question
            optionA.setTitle(allQuestion.list[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestion.list[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestion.list[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestion.list[questionNumber].optionD, for: UIControlState.normal)
            
            selectedAnswer = allQuestion.list[questionNumber].correctAnswer
            

    updateUI()

    print(endCounter)
    }

    
    func updateUI(){
        questionCounter.text = "Question: \(endCounter + 1) / \(allQuestion.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestion.list.count)) * CGFloat(endCounter + 1)
    }
    
    func restartQuiz(){

        endCounter = 0
        updateQuestion()
        
    }
  
}

