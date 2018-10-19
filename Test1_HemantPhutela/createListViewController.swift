//
//  createListViewController.swift
//  Test1_HemantPhutela
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class createListViewController: UIViewController {

    @IBOutlet weak var createList: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSavePressed(_ sender: UIButton) {
       let text = createList.text
        let random = "Mylist"
        let message = "New list name is \(text ?? random)"
        
        let alert = UIAlertController(title: "You have created new list",
                                      message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
        
        
        
        
    }
    
    
    @IBAction func onCancelPressed(_ sender: UIButton) {
    }
    
}
