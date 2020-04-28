//
//  ToDoCD+CoreDataProperties.swift
//  To List App
//
//  Created by Leonardo Gómez on 4/28/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//
//

import Foundation
import CoreData


extension ToDoCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoCD> {
        return NSFetchRequest<ToDoCD>(entityName: "ToDoCD")
    }

    @NSManaged public var name: String?
    @NSManaged public var important: Bool

}
