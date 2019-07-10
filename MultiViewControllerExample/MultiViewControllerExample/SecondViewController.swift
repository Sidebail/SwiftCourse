//
//  SecondViewController.swift
//  MultiViewControllerExample
//
//  Created by Vladimir Vatcurin on 2019-07-10.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var passedValue:String = "";
    
   
    @IBOutlet weak var lPassedVar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lPassedVar.text = passedValue;
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
