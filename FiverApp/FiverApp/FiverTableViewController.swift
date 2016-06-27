//
//  FiverTableViewController.swift
//  FiverApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class FiverTableViewController: UITableViewController {
    
    var fiverArray = [Fiver]()
    var currentFiver = Fiver(name: "", discriptionString: "", imageNameString: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        return fiverData()

    }
    
    func fiverData() {
        
        let business = Fiver(name: "Business", discriptionString: "Business Plans, Career Advice", imageNameString: "icon-7" )
        self.fiverArray.append(business)
        
        let advertising = Fiver(name: "Advertising", discriptionString: "Hold your Sign, Flyers, and Handouts", imageNameString: "icon-8")
        self.fiverArray.append(advertising)
        
        let lifeStyle = Fiver(name: "Lifestyle", discriptionString: "Animal Care & Pets, Relationship", imageNameString: "icon-9")
        self.fiverArray.append(lifeStyle)
        
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fiverArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FiverTableViewCell
        
        self.currentFiver = self.fiverArray[indexPath.row]
        
        cell.pictureImageView.image = UIImage(named: currentFiver.imageNameString)
        
        cell.nameLabel.text = currentFiver.name
        
        cell.discriptionLabel.text = currentFiver.discriptionString

        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentFiver = self.fiverArray[indexPath.row]
        
        performSegueWithIdentifier("BusinessSegue", sender: nil)
        
    }

    //MARK: - Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "BusinessSegue") {
            if let controller = segue.destinationViewController as? ViewController {
                controller.detailVariable = self.currentFiver
                
            }
            
        }
        
        
    }

}
