//
//  ViewHome.swift
//  The Ninja Education App
//
//  Created by Will Micol on 2/1/18.
//  Copyright © 2018 Will Micol. All rights reserved.
//

import UIKit

class ViewHome: UIViewController {
    @IBOutlet weak var BeginButton: UIButton!

    @IBAction func CQuestion(_ sender: Any) {
        
        self.performSegue(withIdentifier: "CQuestion", sender: self)
    }
    
    @IBAction func QuestionReturn(_ sender: UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        BeginButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
