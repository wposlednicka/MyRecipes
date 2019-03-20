//
//  IngredientViewController.swift
//  MyRecipes
//
//  Created by Wiktoria on 20/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit

class IngredientViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var unitPicker: UIPickerView!
    
    var unitPickerData = [String]()
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.unitPicker.delegate = self
        self.unitPicker.dataSource = self
        loadPickerData()
    }
    
    private func loadPickerData(){
        unitPickerData = [Measure.szt.rawValue, Measure.kg.rawValue, Measure.dag.rawValue,
                          Measure.litr.rawValue, Measure.lyzka.rawValue, Measure.lyzeczka.rawValue, Measure.szczypta.rawValue]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unitPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return unitPickerData[row]
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
