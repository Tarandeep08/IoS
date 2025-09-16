//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Tarandeep singh on 16/09/25.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal]{
                // Food for breakfast
                let breakfastFoods = [
                    Food(name: "Pancakes", description: "Fluffy pancakes with syrup"),
                    Food(name: "Omelette", description: "Egg omelette with cheese"),
                    Food(name: "Orange Juice", description: "Freshly squeezed")
                ]
                let breakfast = Meal(name: "Breakfast", food: breakfastFoods)
                
                // Food for lunch
                let lunchFoods = [
                    Food(name: "Grilled Chicken", description: "Served with veggies"),
                    Food(name: "Caesar Salad", description: "Crisp romaine with dressing"),
                    Food(name: "Rice Bowl", description: "Steamed rice with curry")
                ]
                let lunch = Meal(name: "Lunch", food: lunchFoods)
                
                // Food for dinner
                let dinnerFoods = [
                    Food(name: "Pizza", description: "Cheesy margherita"),
                    Food(name: "Pasta", description: "Creamy alfredo pasta"),
                    Food(name: "Soup", description: "Warm tomato soup")
                ]
                let dinner = Meal(name: "Dinner", food: dinnerFoods)
                
                return [breakfast, lunch, dinner]
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        return meal.food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
                
                let meal = meals[indexPath.section]
                let food = meal.food[indexPath.row]
                
                var content = cell.defaultContentConfiguration()
                content.text = food.name
                content.secondaryText = food.description
                cell.contentConfiguration = content
                

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }


}
