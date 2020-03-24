//
//  ViewController.swift
//  DatePickerApp.2020.MARCH.23
//
//  Created by Jay on 2020-03-23.
//  Copyright © 2020 Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    // runs everytime user changes date / time in picker (sender.date)
    // retrieves .date and converts to string and stores into selectedDate
    // show alert
    @IBAction func uiDateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        showAlert(dateTime: selectedDate)
    }
    
    // retrieves value of uiDatePicker
    // converts the date and time into string
    // gets stored in selectedDate constant
    // selectedDate shows the alert function to controller
    @IBAction func btnGetCurrentDate(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: uiDatePicker.date)
        
        showAlert(dateTime: selectedDate)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // date and time styles
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func showAlert(dateTime: String){
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in})
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion:nil)
    }

}

