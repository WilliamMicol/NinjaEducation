//
//  QuestionBank.swift
//  The Ninja Education App
//
//  Created by Will Micol on 2/6/18.
//  Copyright © 2018 Will Micol. All rights reserved.
//

import Foundation

class QuestionBank{

    var list = [Question]()
    
    
    init(){
        list.append(Question(image: "pic1", questionText: "How many ninjas are there?", choiceA: "1", choiceB: "4", choiceC: "8", choiceD: "2", answer: 1))
        list.append(Question(image: "pic2", questionText: "How many ninjas are there?", choiceA: "7", choiceB: "2", choiceC: "1", choiceD: "10", answer: 2))
        list.append(Question(image: "pic3", questionText: "How many ninjas are there?", choiceA: "2", choiceB: "9", choiceC: "5", choiceD: "3", answer: 4))
        list.append(Question(image: "pic4", questionText: "How many ninjas are there?", choiceA: "3", choiceB: "4", choiceC: "6", choiceD: "1", answer: 2))
        list.append(Question(image: "pic5", questionText: "How many ninjas are there?", choiceA: "5", choiceB: "10", choiceC: "7", choiceD: "9", answer: 1))
        list.append(Question(image: "pic6", questionText: "How many ninjas are there?", choiceA: "3", choiceB: "8", choiceC: "6", choiceD: "2", answer: 3))
        list.append(Question(image: "pic7", questionText: "How many ninjas are there?", choiceA: "2", choiceB: "1", choiceC: "10", choiceD: "7", answer: 4))
        list.append(Question(image: "pic8", questionText: "How many ninjas are there?", choiceA: "10", choiceB: "6", choiceC: "8", choiceD: "4", answer: 3))
        list.append(Question(image: "pic9", questionText: "How many ninjas are there?", choiceA: "9", choiceB: "3", choiceC: "4", choiceD: "8", answer: 1))
        list.append(Question(image: "pic10", questionText: "How many ninjas are there?", choiceA: "6", choiceB: "1", choiceC: "4", choiceD: "10", answer: 4))
        
        if CreateQuestion().listind != 0 {
        for i in 0...CreateQuestion().addlist.count-1 {
            list.append(CreateQuestion().addlist[i])
            print(list.count)
        }
        }
        
    }
    
    
    
}

