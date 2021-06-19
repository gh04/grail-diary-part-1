//
//  ViewController.swift
//  GrailDiary-1
//
//  Created by Gerardo Hernandez on 6/15/21.
//

import UIKit

class POIsTableViewController: UIViewController {

    // MARK: - Properties
    var pois = [POI]()
    
    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    


}


extension POIsTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pois.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else { fatalError("Early Crash")}
        
        let poi = pois[indexPath.row]
        
        cell.locationLabel.text = poi.location
        cell.countryLabel.text = poi.location
        
        if poi.clues.count == 1 {
            cell.cluesLabel.text = "\(poi.clues.count) clue"
        } else if poi.clues.count == 0 {
            cell.cluesLabel.text = "\(poi.clues.count) no clues"
        } else {
        cell.cluesLabel.text = "\(poi.clues.count) clues"
        }
        return cell
        
    }
    
    
}


