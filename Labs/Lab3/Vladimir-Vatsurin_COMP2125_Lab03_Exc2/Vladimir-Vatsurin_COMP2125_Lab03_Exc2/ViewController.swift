//
//  ViewController.swift
//  Vladimir-Vatsurin_COMP2125_Lab03_Exc2
//
//  Created by Vladimir Vatcurin on 2019-07-10.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let TempVC:ClientViewController = segue.destination as! ClientViewController
        TempVC.username = tfUsername.text!;
    }

}

