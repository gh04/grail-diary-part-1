//
//  POIDetailViewController.swift
//  GrailDiary-1
//
//  Created by Gerardo Hernandez on 6/18/21.
//

import UIKit

class POIDetailViewController: UIViewController {

    // MARK: - Properites
    var poi: POI?
    
    // MARK: - IBOutlets
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cluesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    private func updateViews() {
        guard let poi = poi else { return }
        locationLabel.text = poi.location.uppercased()
        countryLabel.text = poi.country.uppercased()
        cluesTextView.text = poi.clues.joined(separator: """
            ,
            
            """)
    }
  

}
