//
//  ViewController.swift
//  SimpleIOSApp
//
//  Created by Peter Chuong on 9/30/18.
//  Copyright © 2018 Peter Chuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    var backgroundColor: UIColor!
    @IBOutlet weak var simpleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    @IBAction func changeLabelColor(_ sender: Any) {
        Label.textColor = UIColor.blue
    }
    
    @IBAction func changeViewColor(_ sender: Any) {
        view.backgroundColor = UIColor.orange
        
    }
    
    @IBAction func changeLabelText(_ sender: Any) {
        if (simpleTextField.text == "") {
            Label.text = "Bye World"
        } else {
            Label.text = simpleTextField.text
            simpleTextField.text = ""
        }
    }
    
    
    @IBAction func resetGesture(_ sender: Any) {
        Label.text = "Hello World"
        view.backgroundColor = backgroundColor
        Label.textColor = UIColor.white
    }
}

