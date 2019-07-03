//
//  ViewController.swift
//  GUI_Project
//
//  Created by Vladimir Vatcurin on 2019-07-03.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFirstName: UITextField!

    @IBOutlet weak var txtMessage: UITextField!
    
    @IBOutlet weak var lMessage: UILabel!
    
    @IBOutlet weak var lOutput: UILabel!
    
    @IBOutlet weak var txtFirstVar: UITextField!
    
    @IBOutlet weak var txtSecondVar: UITextField!
    
    var pushCounter = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPush(_ sender: Any) {
        pushCounter += 1;
        lMessage.text = "\(pushCounter) PUSH, " + txtMessage.text!;
    }
    
    @IBAction func bAdd(_ sender: Any) {
        lOutput.text = "Output: \(Double(txtFirstVar.text!)! + Double(txtSecondVar.text!)!)"
    }
    @IBAction func bSub(_ sender: Any) {
        lOutput.text = "Output: \(Double(txtFirstVar.text!)! - Double(txtSecondVar.text!)!)"
    }
    @IBAction func bDiv(_ sender: Any) {
        lOutput.text = "Output: \(Double(txtFirstVar.text!)! / Double(txtSecondVar.text!)!)"
    }
    @IBAction func bMult(_ sender: Any) {
        lOutput.text = "Output: \(Double(txtFirstVar.text!)! * Double(txtSecondVar.text!)!)"
    }
}

