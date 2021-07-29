//
//  FoodTableTableViewController.swift
//  MealTracker
//
//  Created by Wolfpack Digital on 29.07.2021.
//

import UIKit

class FoodTableTableViewController: UITableViewController
{

    var meals: [Meal] = [Meal(name: "Breakfast", food: []), Meal(name: "Lunch", food: []), Meal(name: "Dinner", food: [])]
    
    var firstFood = Food(name: "Tofu", description: "delicious")
    var secondFood = Food(name: "Vegetables", description: "good")
    var thirdFood = Food(name: "Fruits", description: "sweet")
    
   /*
    func showData()
    {
        meals[0].food.append(firstFood)
        meals[0].food.append(secondFood)
        meals[0].food.append(thirdFood)
        meals[1].food.append(firstFood)
        meals[1].food.append(secondFood)
        meals[1].food.append(thirdFood)
        meals[2].food.append(firstFood)
        meals[2].food.append(secondFood)
        meals[2].food.append(thirdFood)
    }
   */
 
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
       // showData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description


        return cell
    }
   
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return meals[section].name
    }
    
}
