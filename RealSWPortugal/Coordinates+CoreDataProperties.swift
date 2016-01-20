//
//  Coordinates+CoreDataProperties.swift
//  RealSWPortugal
//
//  Created by Matapatos on 30/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Coordinates {

    @NSManaged var latitude: NSNumber?
    @NSManaged var longitude: NSNumber?
    @NSManaged var swPark: SWPark?

}
