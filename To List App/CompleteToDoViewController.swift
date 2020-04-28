//
//  CompleteToDoViewController.swift
//  To List App
//
//  Created by Leonardo Gómez on 4/28/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = selectedToDo.name
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    
    @IBAction func completeTapped(_ sender: Any) {
        
    }
}
