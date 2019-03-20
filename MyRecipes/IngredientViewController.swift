//
//  IngredientViewController.swift
//  MyRecipes
//
//  Created by Wiktoria on 20/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit

class IngredientViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    
    var unitPickerData = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPickerData()

        // Do any additional setup after loading the view.
    }
    
    private func loadPickerData(){
        unitPickerData = [Measure.dag.rawValue, Measure.kg.rawValue]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}