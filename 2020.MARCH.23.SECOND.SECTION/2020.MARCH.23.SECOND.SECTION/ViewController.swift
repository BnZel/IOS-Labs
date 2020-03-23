//
//  ViewController.swift
//  2020.MARCH.23.SECOND.SECTION
//
//  Created by Jay on 2020-03-23.
//  Copyright © 2020 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        
        // default
        let okAction = UIAlertAction(title: "OK", style: .default, handler:{action -> Void in self.lblResult.text = "OK"
        })
        
        // UIAlertAction --> changes text displayed in the label, can put more functions for complicated tasks
        
        // cancel
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { action -> Void in self.lblResult.text = "Cancel"
            
        })
        
        // destroy
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: { action -> Void in self.lblResult.text = "Destroy"
            self.callFunctionOne()
            self.callFunctionTwo()
        })
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func callFunctionOne(){print("function one")}
    func callFunctionTwo(){print("function two")}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblResult.numberOfLines = 0  // numberOfLines --> setting to 0 allows it to expand in iwdth no matter the size of text stored within, label won't resize automatically and risks cutting text off if text is longer than width of label
    }


}

