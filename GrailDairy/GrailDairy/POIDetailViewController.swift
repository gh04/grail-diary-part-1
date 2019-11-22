//
//  POIDetailViewController.swift
//  GrailDairy
//
//  Created by Gerardo Hernandez on 11/21/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit

class POIDetailViewController: UIViewController {

    
    //Mark: - IBOutlets
 
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var poi: POI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    
    }
    
    private func updateViews() {
        guard let poi = poi else { return }
        
        locationLabel.text = poi.location
        countryLabel.text = poi.country
        var cluesText = ""
        for clues in poi.clues {
            cluesText += "∙ \(clues)\n"
        }
        
        textView.text = cluesText
        
        
    }
    

   
}
