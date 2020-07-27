//
//  TableTableViewController.swift
//  ToDoList2
//
//  Created by Jynelle on 7/27/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    func createToDo() -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass()
        dogToDo.description = "Walk the Dog"
        // important is set to false by default

        return [swiftToDo, dogToDo]
    }
   
    
var listOfToDo : [ToDoClass] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
           return 2
       }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let eachToDo = listOfToDo[indexPath.row]
        cell.textLabel?.text = eachToDo.description

        if eachToDo.important {
          cell.textLabel?.text = "!" + eachToDo.description
        } else {
          cell.textLabel?.text = eachToDo.description
        }

        return cell
    }
    
}
