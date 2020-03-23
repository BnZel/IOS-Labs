//
//  ViewController.swift
//  AlertControllerTextFieldApp.2020.MARCH.23
//
//  Created by Jay on 2020-03-23.
//  Copyright © 2020 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func btnTapped(_ sender: UIButton) {
        // create alert controller that displays "Log In" title and "Enter Password" underneath
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
    
        // adds text field to alert controller and configures text field to display "Password here"
        alert.addTextField(configurationHandler: {(textField) in textField.placeholder = "Password Here";
            textField.isSecureTextEntry = true     // isSecureTextEntry --> hides characters as user types
        })
        
        // the handler defines constant called savedText (0 index, first text field) on alert
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in let savedText = alert.textFields![0] as UITextField; self.lblResult.text = savedText.text})  // stores textfield, displays in label 
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblResult.numberOfLines = 0
        // Do any additional setup after loading the view, typically from a nib.
    }


}

