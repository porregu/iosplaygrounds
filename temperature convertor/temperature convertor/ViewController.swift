//
//  ViewController.swift
//  temperature convertor
//
//  Created by Guillermo on 2/6/20.
//  Copyright © 2020 Guillermo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultlabel: UILabel!
        
    @IBOutlet weak var changer: UISwitch!
    @IBOutlet weak var converted: UITextField!
    @IBOutlet weak var testing: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changer.addTarget(self, action: #selector(valueChange), for:UIControl.Event.valueChanged)
    }

  
    @IBAction func pressbuttom(_ sender: Any) {
        
        if changer.isOn{
            let farenhites = Double(converted.text!)
            let Celsius = (5/9.0) * (farenhites!-32.0)
            testing.text = String(Celsius)
        }
        else {
        let Celsius = Double(converted.text!)
            let farenhites = (1.8 * Celsius!) + 32
        testing.text = String(farenhites)
    }
    }
    

    @objc func valueChange(mySwitch: UISwitch) {
        if changer.isOn{
            let value =  mySwitch.isOn
            resultlabel.text = "Farenhites"
        }
        else {
            resultlabel.text = "Celsius"
        }
        
           
}
}

