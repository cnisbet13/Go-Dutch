//
//  TipTableViewController.swift
//  GoDutch
//
//  Created by Calvin Nisbet on 2015-09-29.
//  Copyright © 2015 Lone Pine Creative. All rights reserved.
//

import UIKit

class TipTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationController?.navigationBar.topItem?.title = "GoDutch"
               var fontFamilies = UIFont.familyNames()
        
        for (var i:Int = 0; i < fontFamilies.count; i++) {
            
            let fontFamily: NSString = fontFamilies[i] as NSString
            
            let fontNames: NSArray = UIFont.fontNamesForFamilyName(fontFamilies[i] ) as NSArray
            
            print("Family:\(fontFamily)")
            
            print("\nName:\(fontNames)")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 3
        } else if section == 1 {
            return 2
        } else {
        return 1
        }
    }

    
 //   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCellWithIdentifier("mealPriceTableViewCell", forIndexPath: indexPath)
//            return cell
//            } else if indexPath.row == 1 {
//        let cell = tableView.dequeueReusableCellWithIdentifier("tipSliderTableViewCell", forIndexPath: indexPath)
//            return cell
//        } else {
   //         let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
     //       return cell
       // }
    //}

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
