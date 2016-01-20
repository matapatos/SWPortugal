//
//  ShowParksTableViewController.swift
//  RealSWPortugal
//
//  Created by Matapatos on 27/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import UIKit
import CoreLocation
import CoreData

class ShowParksTableViewController: UITableViewController, NSFetchedResultsControllerDelegate  {

    var context : NSManagedObjectContext!
    var parksResultsController : NSFetchedResultsController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.context = appDelegate.managedObjectContext
        
        self.parksResultsController = fetchParksController()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        //------- LOAD PARKS -------
        
        
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if let sections = parksResultsController.sections {
            return sections.count
        }
        
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let sections = parksResultsController.sections {
            return sections[section].numberOfObjects
        }
        
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cell = tableView.dequeueReusableCellWithIdentifier("ShowParkTableViewCell", forIndexPath: indexPath) as! ShowParkTableViewCell
        
        // Fetches the appropriate park for the data source layout.
        let park = parksResultsController.objectAtIndexPath(indexPath) as! SWPark
        
        //TODO ---------------- SHOW PARK INFO -----------
        cell.parkTitle.text = park.title
        cell.parkLocation.text = park.location
        cell.parkType.text = park.type
        cell.parkRating.rating = park.rating!.integerValue
        
        return cell
    }
    
    //-------------------------- CORE DATA FUNCTIONS --------------
    
    func fetchParksController() -> NSFetchedResultsController {
        
        let fetchedParksController : NSFetchedResultsController = {
            let parksFetchRequest = NSFetchRequest(entityName: "SWPark")
            let primarySort = NSSortDescriptor(key: "title", ascending: true)
            parksFetchRequest.sortDescriptors = [primarySort]
            
            let frc = NSFetchedResultsController(fetchRequest: parksFetchRequest, managedObjectContext: context, sectionNameKeyPath: "title", cacheName: nil)
            
            frc.delegate = self
            
            return frc
        }()
        
        do {
            try fetchedParksController.performFetch()
        } catch {
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        
        return fetchedParksController
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
