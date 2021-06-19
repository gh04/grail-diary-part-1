//
//  POITableViewCell.swift
//  GrailDiary-1
//
//  Created by Gerardo Hernandez on 6/18/21.
//

import UIKit

class POITableViewCell: UITableViewCell {

    // MARK: - Properties
    var poi: POI? {
        didSet {
            updateViews()
        }
    }
    // MARK: - IBOutlets
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cluesLabel: UILabel!
    
    private func updateViews() {
        
        guard let location = poi?.location, let country = poi?.country else { return }
        
        guard let clues = poi?.clues else { return cluesLabel.text = "no clues" }
    
        
        locationLabel.text = location
        countryLabel.text = country
        
        if clues.count == 1 {
            cluesLabel.text = "\(clues.count) clue"
        }
        
        cluesLabel.text = "\(clues.count) of clues"
        
    }
    


}
