//
//  CommunityDir.swift
//  Threads
//
//  Created by Jin-Mac on 04.10.15.
//  Copyright © 2015 Igor Cova. All rights reserved.
//

import UIKit

class CommunityDir: UITableViewController {
    
    
    @IBOutlet var tvCommunity: UITableView!
    
    var dirCommunity = [Community]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setCommunityDir()
        self.tvCommunity.delegate = self
        self.tvCommunity.dataSource = self
        self.tvCommunity.separatorStyle = .None        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dirCommunity.count
    }
    
    func setCommunityDir() {
        let c1 = Community(id: 1, name: "Digital Tectonics", linkToImage: "ComLogos/DigTec.jpg", inMyList: true)
        let c2 = Community(id: 2, name: "Major Mafia", linkToImage: "ComLogos/MajorMafia.png", inMyList: true)
        let c3 = Community(id: 3, name: "mr Freeman", linkToImage: "ComLogos/mF.png", inMyList: true)
        let c4 = Community(id: 4, name: "Run Foundation", linkToImage: "ComLogos/RunFoundation.png", inMyList: false)
        let c5 = Community(id: 5, name: "Threads", linkToImage: "ComLogos/thread.png", inMyList: false)
        
        
        dirCommunity.append(c1)
        dirCommunity.append(c2)
        dirCommunity.append(c3)
        dirCommunity.append(c4)
        dirCommunity.append(c5)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : CommunityCell = (tableView.dequeueReusableCellWithIdentifier("CommunityCell") as? CommunityCell)!
                
        cell.setCell(dirCommunity[indexPath.row])
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if dirCommunity[indexPath.row].inMyList == false {
            return 123.0
        }
        
        return 83.0
    }
        
    func joinToCommunityByID(btn: UIButton) {
        for val in dirCommunity {
            if val.id == btn.tag {
                val.inMyList = true
                tvCommunity.reloadData()
            }
        }
    }
    
  /*  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let entryDir = self.storyboard?.instantiateViewControllerWithIdentifier("EntryDir") as! EntryDir
        self.presentViewController(entryDir, animated: true, completion: nil)
        self.tvCommunity.deselectRowAtIndexPath(indexPath, animated: true)
    }
*/
  /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        code
    }*/
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
