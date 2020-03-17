//
//  ViewController.swift
//  Calculator
//
//  Created by Tech on 2020-01-20.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            lblResult.text = String(sender.tag-1)
            numberOnScreen = Double(lblResult.text!)!
            performingMath = false
        }
        else {
            lblResult.text = lblResult.text! + String(sender.tag-1)
            numberOnScreen = Double(lblResult.text!)!
        }
    }
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
        if lblResult.text != "" && sender.tag != 11 && sender.tag != 16{
            previousNumber = Double(lblResult.text!)!
            if sender.tag == 12 { //Divide
                lblResult.text = "/";
            }
            if sender.tag == 13 { //Multiply
                lblResult.text = "x";
            }
            if sender.tag == 14 { //Subtract
                lblResult.text = "-";
            }
            if sender.tag == 15 { //Add
                lblResult.text = "+";
            }
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16 {
            if operation == 12{ //Divide
                lblResult.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13{ //Multiply
                lblResult.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14{ //Subtract
                lblResult.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15{ //Add
                lblResult.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11{
            lblResult.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

