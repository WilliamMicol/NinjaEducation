//
//  ViewCorrect.swift
//  The Ninja Education App
//
//  Created by Will Micol on 2/20/18.
//  Copyright © 2018 Will Micol. All rights reserved.
//

import UIKit

class ViewCorrect: UIViewController {

    @IBOutlet weak var Continue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Continue.layer.cornerRadius = 10
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