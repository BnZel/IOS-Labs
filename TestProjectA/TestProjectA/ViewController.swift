//
//  ViewController.swift
//  TestProjectA
//
//  Created by Tech on 2020-02-03.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblA: UILabel!
    @IBOutlet weak var lblB: UILabel!
    
    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    
    @IBAction func btnAction(_ sender: Any) {
        
        lblA.text = txtB.text
        lblB.text = txtA.text
        
        print("I'm the action button!");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

