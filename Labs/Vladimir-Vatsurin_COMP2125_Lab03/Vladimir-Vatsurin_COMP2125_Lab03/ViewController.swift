//
//  ViewController.swift
//  Vladimir-Vatsurin_COMP2125_Lab03
//
//  Created by Vladimir Vatcurin on 2019-07-10.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfLoanAmount: UITextField!
    
    @IBOutlet weak var tfNumberOfYears: UITextField!
    
    @IBAction func onStValueChanged(_ sender: UIStepper) {
        tfNumberOfYears.text = String(sender.value);
    }
    
    @IBOutlet weak var tfInterestRate: UITextField!
    
    @IBAction func slOnValueChanged(_ sender: UISlider) {
        let step: Float = 0.01;
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        
        tfInterestRate.text = "\(sender.value)"
    }
    
    @IBOutlet weak var lDetials: UILabel!
    
    @IBAction func onCalculateClicked(_ sender: UIButton) {
        if(tfInterestRate.text == "" || tfLoanAmount.text == "" || tfNumberOfYears.text == ""){
            lDetials.text = "Not valid! Please input all values!";
        }else{
            let interestRate = Float(tfInterestRate.text!)!;
            let totalLoan = Float(tfLoanAmount.text!)! + (Float(tfLoanAmount.text!)! * interestRate * Float(tfNumberOfYears.text!)!);
            let numOfYears = Float(tfNumberOfYears.text!)!;
            lDetials.text = "\(totalLoan) \n \(totalLoan * numOfYears / 12) "
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

