//
//  ViewController.swift
//  MultiViewControllerExample
//
//  Created by Vladimir Vatcurin on 2019-07-10.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lFirstName: UILabel!
    
    @IBOutlet weak var lLastName: UILabel!
    
    @IBOutlet weak var lAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let TempVC:SecondViewController = segue.destination as! SecondViewController
        TempVC.passedValue = "Something";
    }


}

