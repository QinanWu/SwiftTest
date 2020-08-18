//
//  Goal+CoreDataProperties.swift
//  SwiftTest
//
//  Created by wuanan on 2020/8/18.
//  Copyright © 2020 jy. All rights reserved.
//
//

import Foundation
import CoreData


extension Goal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goal> {
        return NSFetchRequest<Goal>(entityName: "Goal")
    }

    @NSManaged public var name: String?

}
