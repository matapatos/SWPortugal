//
//  Image.swift
//  RealSWPortugal
//
//  Created by Matapatos on 28/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import Foundation
import CoreData


class Image: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    convenience init(image : NSData, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        let entity = NSEntityDescription.entityForName("Image", inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.data = image
    }
    
    func addPark(swPark:SWPark){
        self.swPark = swPark
    }
}
