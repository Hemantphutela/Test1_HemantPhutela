//
//  computerViewController.swift
//  Test1_HemantPhutela
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class computerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource  {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return electronicNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return electronicNames[row]
    }

    @IBOutlet weak var electronicPicker: UIPickerView!
    private let electronicNames = ["Laptop","Ipad","SmartPhone","Smart Watch","Head fones","Air Pods","Magic Mouse"]
    
    @IBOutlet weak var electronicText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let quan = electronicText.text
        let row = electronicPicker.selectedRow(inComponent: 0)
        let selected = electronicNames[row]
        let title = "You Selected \(selected) quantity \(quan ?? "0") !"
        
        let alert = UIAlertController(title: title,
                                      message: "Add to the List ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
    }
    
}
