//
//  HistoryTableViewController.swift
//  GeoCalculator
//
//  Created by user127998 on 5/30/17.
//  Copyright © 2017 Jonathan Engelsma. All rights reserved.
//

import Foundation
import UIKit

class HistoryTableViewController: UITableViewController {
    
    var entries : [LocationLookup] = []
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // your code goes here
        return entries.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        // your code goes here.
        let entry = entries[indexPath.row]
        
        cell.textLabel?.text = "(\(entry.origLat), \(entry.origLng)), (\(entry.destLat), \(entry.destLng))"
        //cell.detailTextLabel?.text = "\(entry.timestamp)"
        
        
        return cell
        
    }
    
}
