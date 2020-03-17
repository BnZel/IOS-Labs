//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Tech on 2020-01-27.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Attributes
    // Drag and drop from storyboard to here ( control + left click )
    // IBOutlet --> defines label
    // IBAction --> defines buttons and events.
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblResults: UILabel!
    
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    
    // Calculate button function
    @IBAction func btnCalculate(_ sender:UIButton) {
        print("Calculate button pressed...")
        
        let heightInput = txtHeight.text!
        let weightInput = txtWeight.text!
        
        // Convert height and weight to numbers
        let height = Double(heightInput)!
        let weight = Double(weightInput)!
        
        // Debug
        // \(varName) --> reference variable during output
        print("Height is: \(height)")
        print("Weight is: \(weight)")
        let bmi = weight/(height*height)
        print("Your BMI is: \(bmi)")
        
        // Output to screen using String()
        lblResults.text = String("Your BMI is: \(bmi)")
    }
}

