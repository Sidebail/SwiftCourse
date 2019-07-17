//
//  ViewController.swift
//  TableViewCustomCell
//
//  Created by Sujeet Lohan on 2019-07-17.
//  Copyright © 2019 Sujeet Lohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var watchTitle: UILabel!
    
    @IBOutlet weak var watchImage: UIImageView!
    
    @IBOutlet weak var watchDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    watchTitle.text = watches[myIndex]
        watchDescription.text = watchDesc[myIndex]
        watchImage.image = UIImage(named: watches[myIndex] + ".jpeg")
        
    } // end func


}

