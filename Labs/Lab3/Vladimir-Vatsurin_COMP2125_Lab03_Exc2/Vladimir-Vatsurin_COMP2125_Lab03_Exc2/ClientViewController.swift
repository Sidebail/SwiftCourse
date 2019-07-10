//
//  ClientViewController.swift
//  Vladimir-Vatsurin_COMP2125_Lab03_Exc2
//
//  Created by Vladimir Vatcurin on 2019-07-10.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import UIKit

class ClientViewController: UIViewController {
    
    var username = "";
    
    
    @IBOutlet weak var tfProjectName: UITextField!
    
    
    @IBOutlet weak var tfProjectDurationInMonths: UITextField!
    
    @IBOutlet weak var lDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lDetails.text = username;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmitClick(_ sender: Any) {
        lDetails.text = "\(lDetails.text!)\n \(tfProjectName.text!) \n \(tfProjectDurationInMonths.text!)"
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
