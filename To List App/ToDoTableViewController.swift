//
//  ToDoTableViewController.swift
//  To List App
//
//  Created by Leonardo Gómez on 4/28/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = toDo.name
            cell.textLabel?.textColor = UIColor.red
        } else {
            cell.textLabel?.text = toDo.name
        }

        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createToDos() -> [ToDo] {
        
        let allTheLight = ToDo(name: "All the Light We Cannot See")
        let washington = ToDo(name: "Washington Black")
        let crimeAndPunishment = ToDo(name: "Crime and Punishment", important: true)
        
        return [allTheLight, washington, crimeAndPunishment]
    }

}
