//
//  ViewController.swift
//  MyRecipes
//
//  Created by Wiktoria on 19/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit
import os.log

class RecipeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var nameRecipeTextField: UITextField!
    @IBOutlet weak var ingredientsTable: UITableView!
    @IBOutlet weak var addNewIngredientButton: UIButton!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var imageRecipe: UIImageView!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var recipe: Recipe?

    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        descriptionTextField.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        imageRecipe.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        let name = nameRecipeTextField.text!
        let ingredients = ["maslo", "olej"]
        let descriptions = descriptionTextField.text!
        let image = imageRecipe.image!
        
        recipe = Recipe.init(name: name, ingredients: ingredients, description: descriptions, image: image)
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

