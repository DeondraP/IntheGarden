//
//  VeggieTableViewController.swift
//  IntheGarden
//
//  Created by Deondra Patrick on 8/24/23.
//

import UIKit

class VeggieTableViewController: UITableViewController {
    
    let veggies = Veggies.loadVeggieData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "VeggieTableViewCell", bundle: nil), forCellReuseIdentifier: "VeggieTableViewCell")
    }
    
    
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return veggies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VeggieTableViewCell") as! VeggieTableViewCell
        
        let veggie = veggies[indexPath.row]
        
        cell.update(name: veggie.name, image: veggie.image)
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let veggie = veggies[indexPath.row]
        performSegue(withIdentifier: "VeggieSegue", sender: veggie)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController,
           let sender = sender as? Veggies {
            destination.veggie = sender
            
        }
    }
}
