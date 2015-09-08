//
//  ViewController.swift
//  Test_TableView
//
//  Created by Raj mac on 9/4/15.
//  Copyright (c) 2015 SPEDK12. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tbl = UITableView()
    
    var arr = ["number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table View","number Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table Viewnumber Of Sections In Table View"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbl.frame = CGRect(x: 0, y: 0, width: 768, height: 1024)
        view.addSubview(tbl)
        
        tbl.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

        tbl.delegate = self
        tbl.dataSource = self
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tbl.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = arr[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        return true
        
    }
        
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return "Table footer"
        
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Table header"
        
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 60
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            arr.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if (self.tbl.editing) {
            return UITableViewCellEditingStyle.Delete
        }
        return UITableViewCellEditingStyle.None
    }
    
    
}


