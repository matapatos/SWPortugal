//
//  Coordinates.swift
//  RealSWPortugal
//
//  Created by Matapatos on 28/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import Foundation
import CoreData


class Coordinates: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    convenience init(latitude : Double, longitude : Double, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        let entity = NSEntityDescription.entityForName("Coordinates", inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func addPark(swPark:SWPark){
        self.swPark = swPark
    }
}
