//
//  MyTableViewController.swift
//  some_recipes
//
//  Created by atanastachev on 7.10.21.
//

import UIKit

class MyTableViewController: UITableViewController {
    class recipe {
        var name: String?
        var timeToCook: String?
        var img: String?
        var details: String?
        init(name: String, timeToCook: String, img: String, details: String) {
            self.name = name
            self.details = details
            self.img = img
            self.details = details
        }
    }
    let recipe1 = recipe(name: "Pork with rice", timeToCook: "1h 15min", img: "avocado", details: "Products: 500g pork, 150g rice, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe2 = recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe3 = recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe4 = recipe(name: "Chicken soup", timeToCook: "45min", img: "avocadoto", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    let recipe5 = recipe(name: "Pork goulash", timeToCook: "45min", img: "bonfile", details: "Products: 500g chicken, 150g potatoes, 2 onions, 200g tomatoes. How to prepare: Heat the olive oil in a large pot over medium-high heat. Sauté the onion, carrot and celery for 2 to 3 minutes, until its soft and translucent. Add the garlic, chili flakes and Italian seasoning and sauté another minute.")
    
    //let data = [recipe]()
    //data.append(aRecipe: recipe)
    
    
    let data: [(recipeName: String, timeToPrepare: String)] = [
    ("Stewed pork with mushrooms", "1h 15min"),
    ("Mushroom soup", "45min"),
    ("Simple cake", "1h 15min")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myRecipeCell", for: indexPath) as?
                MyTableViewCell else 	{
                    return UITableViewCell()
                }
        let cellData = self.data[indexPath.row]
        cell.recipeName.text = cellData.recipeName
        cell.recipeDetail.text = cellData.timeToPrepare
        cell.imageView?.image = UIImage(named: "recipe1.img")

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
