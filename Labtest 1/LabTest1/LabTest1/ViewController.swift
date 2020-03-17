//
//  ViewController.swift
//  LabTest1
//
//  Created by Tech on 2020-02-10.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // initialize variables here
    @IBOutlet weak var txtInputAmt: UITextField!
    @IBOutlet weak var txtConversionFactor: UITextField!
    
    @IBOutlet weak var lblTotalAmt: UILabel!
    @IBOutlet weak var txtResult: UITextField!
    
    @IBAction func btnCalculate(_ sender: Any) {
        
        let sal = txtInputAmt.text!
        let cvtFactor = txtConversionFactor.text!
    
        let total = Double(sal)! * Double(cvtFactor)!
        lblTotalAmt.text = "Total amount is: \(total)";

        print("result is: \(total)");
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

