//
//  SWPark+CoreDataProperties.swift
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

extension SWPark {

    @NSManaged var comments: String?
    @NSManaged var location: String?
    @NSManaged var rating: NSNumber?
    @NSManaged var title: String?
    @NSManaged var type: String?
    @NSManaged var coordinates: Coordinates?
    @NSManaged var equipments: NSSet?
    @NSManaged var images: NSSet?

}
