//
//  ViewController.swift
//  ToDoList
//
//  Created by ITSMAIL on 18/11/2019.
//  Copyright © 2019 Loubna Itsmail. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let itemArray = ["Lait", "Oeuf", "Pain"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


//TableView Methods Datasource
// Method Nbr de case
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

//Method config case = CELL
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//Declare case
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoListCell", for: indexPath)
//contenu text case
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
//TableView Delegate to check, press..
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    //Checkmark when pressed and none when repressed
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
 //Design : déselectionner après pressed ? Pk ne fonctionne pas pfffff
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
}

