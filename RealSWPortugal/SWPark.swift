//
//  SWPark.swift
//  RealSWPortugal
//
//  Created by Matapatos on 27/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import UIKit
import CoreData

class SWPark: NSManagedObject {
    
    convenience init?(title:String!, rating:Int!, type:ParkType!, equipments:NSSet!, coordinates:Coordinates!, location:String!, images:NSSet?, comments:String?, context:NSManagedObjectContext!){
        let entity = NSEntityDescription.entityForName("SWPark", inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.title = title
        self.rating = rating
        self.type = type.rawValue
        self.images = images
        self.coordinates = coordinates
        self.location = location
        self.images = images
        self.comments = comments
        
    }
}
