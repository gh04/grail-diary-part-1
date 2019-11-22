//
//  POIsTableViewController.swift
//  GrailDairy
//
//  Created by Gerardo Hernandez on 11/21/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit

class POIsTableViewController: UIViewController {
    
   
    
    var pois: [POI] = []
    

    @IBOutlet weak var tableView: UITableView!
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPOIModalSegue" {
            if let addPoiVC = segue.destination as? AddPOIViewController {
                addPoiVC.delegate = self
            }
        } else if segue.identifier == "ShowPOIDetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow,
                let poiDetailVC = segue.destination as? POIDetailViewController {
                poiDetailVC.poi = pois[indexPath.row]
            }
        }
    }
}

extension POIsTableViewController: UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pois.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else { return UITableViewCell() }
        
        let poi = pois[indexPath.row]
        cell.poi = poi
        
        return cell
    }
    
    
}


extension POIsTableViewController: AddPOIDelegate {
  
    func poiWasAdded(_ poi: POI) {
        pois.append(poi)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    
    }
}

    
    


  
