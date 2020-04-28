//
//  AddToDoViewController.swift
//  To List App
//
//  Created by Leonardo Gómez on 4/28/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addTapped(_ sender: Any) {
//        let toDo = ToDo()
//
//        if let titleText = titleTextField.text {
//            toDo.name = titleText
//            toDo.important = importantSwitch.isOn
//        }
//
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
        
        // This line creates a reference to AppDelegate so we can save our ToDos in Core Data.
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        // Context is an extension of the reference to the Core Data
        let context = appDelegate.persistentContainer.viewContext
        
        // This creates a new object in Core Data
        let toDo = ToDoCD(context: context)
        
        // These lines give the the new CD object information based on what the user provided
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        // This is like clicking "save"! Our new object is now safe in Core Data!
        appDelegate.saveContext()
        
        // This sends the user back to the Table View Controller
        navigationController?.popViewController(animated: true)
    }
}
