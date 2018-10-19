//
//  otherViewController.swift
//  Test1_HemantPhutela
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class otherViewController: UIViewController {
    
    
    @IBOutlet weak var itemText: UITextField!
    
    
    @IBOutlet weak var quantityText: UILabel!
    
    @IBAction func otherStepper(_ sender: UIStepper) {
        
        quantityText.text = String(sender.value)
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
        
        let text = itemText.text
        let qun = quantityText.text
        let message = "You have added a item \(text ?? "") qauntity \(qun ?? "")"
        
        let alert = UIAlertController(title: "Confirm Items",
                                      message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
        
        
        
    }
    

}
