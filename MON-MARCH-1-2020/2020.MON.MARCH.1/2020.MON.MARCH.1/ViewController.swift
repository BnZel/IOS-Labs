//
//  ViewController.swift
//  2020.MON.MARCH.1
//
//  Created by Tech on 2020-03-02.
//  Copyright © 2020 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCellStatus: UILabel!
    @IBOutlet weak var lblDataStatus: UILabel!
    
    // buttons
    @IBAction func btnTurnAPOn(_ sender: UIButton) {
        switchCellOutlet.isOn = false;
        switchDataOutlet.isOn = false;

        lblCellStatus.text = "Cell Status is OFF"
        lblDataStatus.text = "Data Status is OFF"

        sender.backgroundColor = UIColor.blue
        print("Airplane mode ON")
    }
    
    @IBAction func btnTurnAPOff(_ sender: UIButton) {
        switchCellOutlet.isOn = true;
        switchDataOutlet.isOn = true;
        
        lblCellStatus.text = "Cell Status is ON"
        lblDataStatus.text = "Data Status is ON"
        
        sender.backgroundColor = UIColor.blue
        print("Airplane mode OFF")
    }
    
    // swtiches
    // switch variables to access states (in this case: isOn = true/false)
    @IBOutlet weak var switchCellOutlet: UISwitch!
    @IBOutlet weak var switchDataOutlet: UISwitch!
    
    @IBAction func switchCell(_ sender: UISwitch) {
        // sender --> description of outlet
        print("CELL: ",sender.isOn)
        if sender.isOn == false{
            lblCellStatus.text = "Cell Status is OFF"
        }
        else{
            lblCellStatus.text = "Cell Status is ON"
        }
    }
    
   
    @IBAction func switchData(_ sender: UISwitch) {
        print("DATA: ",sender.isOn)
        if sender.isOn == false{
            lblDataStatus.text = "Data Status is OFF"
        }
        else{
            lblDataStatus.text = "Data Status is ON"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do a0ny additional setup after loading the view.
    }


}

