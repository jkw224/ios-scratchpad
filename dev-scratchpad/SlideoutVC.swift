//
//  SlideoutVC.swift
//  dev-scratchpad
//
//  Created by Jonathan Wood on 12/4/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class SlideoutVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var SlideoutTV: UITableView!
    
    var TableArray = ["some", "rows", "in", "tableview"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SlideoutTV.delegate = self
        SlideoutTV.dataSource = self
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("menuCell") as! SlideoutMenuCell
        
        cell.itemLbl?.text = TableArray[indexPath.row]
        
        return cell
    }
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
