//
//  ViewController.swift
//  Todoey
//
//  Created by Ира on 01/08/2019.
//  Copyright © 2019 Irina Lapteva. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Buy cheese", "Find the keys", "Clean apartment"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print (itemArray[indexPath.row])
        
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else{
            
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK - Add new items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new todoey item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //what will happen once the user clicks  Add Item button on our UIAlert
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
            
            
        }
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

