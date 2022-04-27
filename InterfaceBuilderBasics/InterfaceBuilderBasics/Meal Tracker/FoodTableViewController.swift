//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Khalid Javeed on 4/26/22.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] = [
        Meal(name: "oatmeal", food: [
        Food(name: "strawberrys", description: "red"),
        Food(name: "blueberrys", description: "blue"),
        Food(name: "bananas", description: "yellow")]),
        Meal(name: "foul", food: [
        Food(name: "beans", description: "brown"),
        Food(name: "cucumbers", description: "green"),
        Food(name: "tomatos", description: "reder")]),
        Meal(name: "salad", food: [
        Food(name: "lettuce", description: "crunchy"),
        Food(name: "avocado", description: "mushy"),
        Food(name: "carrots", description: "orange")])]
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
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        cell.textLabel?.text = meals[indexPath.section].food[indexPath.row].name
        cell.detailTextLabel?.text = meals[indexPath.section].food[indexPath.row].description

        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
