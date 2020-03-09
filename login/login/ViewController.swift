//
//  ViewController.swift
//  login
//
//  Created by Guillermo on 3/6/20.
//  Copyright © 2020 Guillermo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var uwernamefield: UITextField!
    
    @IBOutlet weak var forgotusernamebuttom: UIButton!
    
    @IBOutlet var paswordfield: UIView!
    
    
    @IBOutlet weak var forgotpaswordbuttom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let sender = sender as? UIButton else {return}
    
    if sender == forgotpaswordbuttom {
    segue.destination.navigationItem.title = " forgot pasword "
    } else if sender == forgotusernamebuttom{
    segue.destination.navigationItem.title = "forgot username"
    } else {
        segue.destination.navigationItem.title = uwernamefield.text
    }
    }
    @IBAction func forgotusernameb(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotusernamebuttom", sender: forgotusernameb)
    }
    
}

