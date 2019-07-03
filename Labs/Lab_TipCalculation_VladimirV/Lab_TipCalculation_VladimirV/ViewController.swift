//
//  ViewController.swift
//  Lab_TipCalculation_VladimirV
//
//  Created by Vladimir Vatcurin on 2019-07-03.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lBillAmount: UILabel!
    
    @IBOutlet weak var lCTP: UILabel!
    
    @IBOutlet weak var slidCustomTip: UISlider!
    
    @IBOutlet weak var lPercentage: UILabel!
    
    @IBOutlet weak var l15Tip: UILabel!
    @IBOutlet weak var lCustomTip: UILabel!
    
    @IBOutlet weak var l15Total: UILabel!
    @IBOutlet weak var lCustomTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }

    @IBAction func b1(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "1";
        updateCounters();
    }
    @IBAction func b2(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "2";
        updateCounters();
    }
    @IBAction func b3(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "3";
        updateCounters();
    }
    @IBAction func b4(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "4";
        updateCounters();
    }
    @IBAction func b5(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "5";
        updateCounters();
    }
    @IBAction func b6(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "6";
        updateCounters();
    }
    @IBAction func b7(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "7";
        updateCounters();
    }
    @IBAction func b8(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "8";
        updateCounters();
    }
    @IBAction func b9(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "9";
        updateCounters();
    }
    @IBAction func b0(_ sender: Any) {
        lBillAmount.text = lBillAmount.text! + "0";
        updateCounters();
    }
    @IBAction func bDel(_ sender: Any) {
        if(lBillAmount.text! != ""){
            lBillAmount.text!.remove(at: lBillAmount.text!.index(before: lBillAmount.text!.endIndex));
            updateCounters();
        }
    }
    @IBAction func onSliderUpdate(_ sender: UISlider) {
        let step: Float = 1
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        updateCounters();
    }
    
    
    func updateCounters(){
        lCTP.text = "Custom Tip Percentage: \(slidCustomTip.value)%";
        lPercentage.text = "\(slidCustomTip.value)%";
        
        if(lBillAmount.text! != ""){
            let billAmount = Float(lBillAmount.text!)!;
            l15Tip.text = "\(billAmount * 15 / 100)"
            l15Total.text = "\(billAmount + billAmount * 15 / 100)"
            
            lCustomTip.text = "\(billAmount * slidCustomTip.value / 100)"
            lCustomTotal.text = "\(billAmount + billAmount * slidCustomTip.value / 100)"
        } else{
            l15Tip.text = "0.0"
            l15Total.text = "0.0"
            
            lCustomTip.text = "0.0"
            lCustomTotal.text = "0.0"
        }
        
    }
    
}

