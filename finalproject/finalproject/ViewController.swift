//
//  ViewController.swift
//  finalproject
//
//  Created by guillermo porres marin  on 4/13/20.
//  Copyright © 2020 guillermo porres marin . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func makeNewCarpet(_ sender: UIButton) {
        // Open Camera to get Picture
        // Save picture as a variable
        // prepare segue to newCarpetVewController
        // pass the picture to newCarpetviewController
        
        performSegue(withIdentifier: "Newcarpet", sender: <#T##Any?#>)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Write the code to pass the picture information to the new view controller
    }
}

