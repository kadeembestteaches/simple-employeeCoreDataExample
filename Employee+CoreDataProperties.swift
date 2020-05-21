//
//  Employee+CoreDataProperties.swift
//  practiceCoreData
//
//  Created by Kadeem Best on 2020-05-21.
//  Copyright © 2020 ios. All rights reserved.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var gender: String?
    @NSManaged public var lastName: String?

}
