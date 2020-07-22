//
//  ViewController.swift
//  MiniProject1
//
//  Created by Jynelle on 7/22/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var appTitle: UILabel!
    
    
    @IBOutlet weak var textField1: UITextField!
    
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitTappedButton(_ sender: UIButton) {
        if let newTitle = textField1.text {
            appTitle.text = newTitle
        }
    }
}

