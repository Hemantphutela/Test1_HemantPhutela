//
//  holidayViewController.swift
//  Test1_HemantPhutela
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class holidayViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return holidayNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return holidayNames[row]
    }

    @IBOutlet weak var holidayPicker: UIPickerView!
    private let holidayNames = ["BagPacks","Tent","Treck Suites","Goggles","Camera"]
    
    @IBOutlet weak var quantitylab: UILabel!
    @IBAction func quantityStepper(_ sender: UIStepper) {
        
        quantitylab.text = String(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let quan = quantitylab.text
        let row = holidayPicker.selectedRow(inComponent: 0)
        let selected = holidayNames[row]
        let title = "You Selected \(selected) quantity \(quan ?? "0")"
        
        let alert = UIAlertController(title: title,
                                      message: "Add to the List ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
        
        
    }
    
}
