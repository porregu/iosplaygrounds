//
//  NewcarpetViewController.swift
//  finalproject
//
//  Created by guillermo porres marin  on 4/16/20.
//  Copyright © 2020 guillermo porres marin . All rights reserved.
//

import UIKit

class NewcarpetViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    @IBOutlet weak var picture: UIImageView!
    let pickerController = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Takenewpic(_ sender: UIButton) {
        pickerController.allowsEditing = false
        pickerController.sourceType = .photoLibrary

        present(pickerController, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        //var newImage: UIImage
        //if let possibleImage = info[.editedImage] as? UIImage {
        //    newImage = possibleImage
        //} else if let possibleImage = info[.originalImage] as? UIImage {
        //    newImage = possibleImage
        //} else {
        //    return
        //}

        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            picture.contentMode = .scaleAspectFit
            picture.image = pickedImage
        }

        dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
