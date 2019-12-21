//
//  File.swift
//  The Ninja Education App
//
//  Created by Will Micol on 2/19/19.
//  Copyright © 2019 Will Micol. All rights reserved.
//

import UIKit


class CreateQuestion: UIViewController, UITextFieldDelegate{

    

    @IBOutlet weak var Number: UITextField!
    @IBOutlet weak var Choice1: UITextField!
    @IBOutlet weak var Choice2: UITextField!
    @IBOutlet weak var Choice3: UITextField!
    @IBOutlet weak var Choice4: UITextField!
    @IBOutlet weak var quesanswer: UITextField!
    @IBOutlet weak var CreateQues: UIButton!
    
    var addlist = [Question]()
    var listind = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        


            
            
        
        CreateQues.layer.cornerRadius = 20
            Number.delegate = self
            Choice1.delegate = self
            Choice2.delegate = self
            Choice3.delegate = self
            Choice4.delegate = self
            quesanswer.delegate = self



        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Create(_ sender: Any) {
        let tnumber = Number.text ?? "none"
        let tchoice1 = Choice1.text ?? "none"
        let tchoice2 = Choice2.text ?? "none"
        let tchoice3 = Choice3.text ?? "none"
        let tchoice4 = Choice4.text ?? "none"
        let tanswer = Int(quesanswer.text ?? "1") ?? 1
        if tnumber != "none" {
            
            

            addlist.append(Question(image: "pic1", questionText: "How many ninjas are there?", choiceA: tchoice1, choiceB: tchoice2, choiceC: tchoice3, choiceD: tchoice4, answer: tanswer))
            listind += 1
            print(QuestionBank().list.count)
            
            
        }


        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Number.resignFirstResponder()
        Choice1.resignFirstResponder()
        Choice2.resignFirstResponder()
        Choice3.resignFirstResponder()
        Choice4.resignFirstResponder()
        quesanswer.resignFirstResponder()
    }
}
extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

