//
//  HistoryTableViewController.swift
//  GeoCalculator
//
//  Created by user127998 on 5/30/17.
//  Copyright © 2017 Jonathan Engelsma. All rights reserved.
//

import Foundation
import UIKit

protocol HistoryTableViewControllerDelegate {
    func selectEntry(entry: LocationLookup)
}


class HistoryTableViewController: UITableViewController {
    
    var entries : [LocationLookup] = []
    var historyDelegate: HistoryTableViewControllerDelegate?
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // your code goes here
        return entries.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        // your code goes here.
        let entry = entries[indexPath.row]
        
        cell.textLabel?.text = "(\(entry.origLat), \(entry.origLng)), (\(entry.destLat), \(entry.destLng))"
        cell.detailTextLabel?.text = "\(entry.timestamp)"
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // use the historyDelegate to report back entry selected to the calculator scene
        
        if let del = self.historyDelegate {
            
            let ll = entries[indexPath.row]
            
            del.selectEntry(entry: ll)
            
        }
        
        
        // this pops to the calculator
        
        //_ = self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
