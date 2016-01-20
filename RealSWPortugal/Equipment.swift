//
//  Equipment.swift
//  RealSWPortugal
//
//  Created by Matapatos on 28/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import Foundation
import CoreData


class Equipment: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    convenience init(equip:EquipType, insertIntoManagedObjectContext context: NSManagedObjectContext) {
        let entity = NSEntityDescription.entityForName("Equipment", inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = equip.rawValue
    }
    
    func addPark(swPark:SWPark){
        var parks = self.swParks?.allObjects as! [SWPark]
        parks.append(swPark)
        self.swParks = NSSet(array: parks)
    }
    
}
