//
//  RecipeTableVC.swift
//  IntheGarden
//
//  Created by Dominike Bowman on 9/5/23.
//

import UIKit

class RecipeTableVC: UITableViewController {
        
        let recipes = Veggies.loadRecipeData()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.tableView.register(UINib(nibName: "VeggieTableViewCell", bundle: nil), forCellReuseIdentifier: "VeggieTableViewCell")
        }
        
        
        // MARK: - Table view data source
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return recipes.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VeggieTableViewCell") as! VeggieTableViewCell
            
            let recipe = recipes[indexPath.row]
            
            cell.update(name: recipe.name, image: recipe.image)
            return cell
            
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let recipe = recipes[indexPath.row]
            performSegue(withIdentifier: "RecSegue", sender: recipe)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? RecVCDetail,
               let sender = sender as? Veggies {
                destination.recipe = sender
                
            }
        }
    }

