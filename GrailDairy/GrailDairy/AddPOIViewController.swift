//
//  AddPOIViewController.swift
//  GrailDairy
//
//  Created by Gerardo Hernandez on 11/21/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit



protocol AddPOIDelegate {
    func poiWasAdded(_ poi: POI)
}


class AddPOIViewController: UIViewController {

    // Mark: IBOutlets
    
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet var clue1TextField: UITextField!
    @IBOutlet var clue2TextField: UITextField!
    @IBOutlet var clueThreeTextField: UITextField!
    
    var delegate: AddPOIDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let location = locationTextField.text,
            let country = countryTextField.text,
            !location.isEmpty,
            !country.isEmpty else { return }
    
    var poi = POI(location: location, country: country, clues: [])
    
    if let clue1 = clue1TextField.text,
        !clue1.isEmpty {
        poi.clues.append(clue1)
        }
        
        if let clue2 = clue2TextField.text,
            !clue2.isEmpty {
            poi.clues.append(clue2)
        }
        
        if let clue3 = clueThreeTextField.text,
            !clue3.isEmpty {
            poi.clues.append(clue3)
        }
        delegate?.poiWasAdded(poi)
}
}
