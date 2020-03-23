//
//  ViewController.swift
//  2020.MON.MARCH.23
//
//  Created by Jay on 2020-03-23.
//  Copyright © 2020 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: {action -> Void in} )
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

