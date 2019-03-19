//
//  RecipesTableViewController.swift
//  MyRecipes
//
//  Created by Wiktoria on 19/03/2019.
//  Copyright © 2019 Wiktoria. All rights reserved.
//

import UIKit

class RecipesTableViewController: UITableViewController {
    
    
    var recipes = [Recipe]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadDummyRecipe()

    }
    
    private func loadDummyRecipe(){
        let ingredients1 = ["maslo", "olej", "woda"]
        let photo1 = UIImage(named: "image1")!
        
        let recipe1 = Recipe.init(name: "Nalesniki", ingredients: ingredients1, description: "opis robienia nalesnikow", image: photo1)
        
       
        let ingredients2 = ["maslo", "mieso"]
        let photo2 = UIImage(named: "image1")!
        
        let recipe2 = Recipe.init(name: "Schabowy", ingredients: ingredients2, description: "opis robienia schabowego", image: photo2)
        
        recipes += [recipe1, recipe2]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "recipeTableViewCell"
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? RecipeTableViewCell else {
            fatalError("Probilem with initialize recipe cell.")
        }
        
        let recipe = recipes[indexPath.row]
      
        cell.imageRecipe.image = recipe.image
        cell.nameRecipeLabel.text = recipe.name
     

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
