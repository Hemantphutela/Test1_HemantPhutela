//
//  groceryViewController.swift
//  Test1_HemantPhutela
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class groceryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groceryNames.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groceryNames[row]
    }
    
   

    @IBOutlet weak var groceryPicker: UIPickerView!
    private let groceryNames = ["Onion","Tomato","Milk","Potato","LadyFinger","Ginger","Garlic"]
    
    @IBOutlet weak var quantityText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onButtonPressed(_ sender: UIButton) {
        let quan = quantityText.text
        let row = groceryPicker.selectedRow(inComponent: 0)
        let selected = groceryNames[row]
        let title = "You Selected \(selected) quantity \(quan ?? "0") kgs!"
        
        let alert = UIAlertController(title: title,
                                      message: "Add to the List ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
        
        
    }
    

}
