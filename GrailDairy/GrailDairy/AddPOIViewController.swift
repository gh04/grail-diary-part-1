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
    @IBOutlet var clue3TextField: UITextField!
    
    var delegate: AddPOIDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationTextField.delegate = self

        
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
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
        
        if let clue3 = clue3TextField.text,
            !clue3.isEmpty {
            poi.clues.append(clue3)
        }
        delegate?.poiWasAdded(poi)
}
}

extension AddPOIViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            switch textField {
            case locationTextField:
                locationTextField.becomeFirstResponder()
            case countryTextField:
                countryTextField.becomeFirstResponder()
            case clue1TextField:
                clue1TextField.becomeFirstResponder()
            case clue2TextField:
                clue2TextField.becomeFirstResponder()
            case clue3TextField:
                clue3TextField.becomeFirstResponder()
            default:
                textField.resignFirstResponder()
                
            }
        }
        return false
    }
}
