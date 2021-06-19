//
//  AddPOIViewController.swift
//  GrailDiary-1
//
//  Created by Gerardo Hernandez on 6/18/21.
//

import UIKit

protocol AddPOIDelegate {
    func poiWasAdded(_ poi: POI)
}

class AddPOIViewController: UIViewController {
    
    // MARK: - Properties
    var delegate: AddPOIDelegate?
    
    // MARK: - IBOutlets
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet var clue1TextField: UITextField!
    @IBOutlet var clue2TextField: UITextField!
    @IBOutlet var clue3TextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    // MARK: - IBActions
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        guard let location = locationTextField.text, let country = countryTextField.text else { return }
        
        var clues: [String] = []
        
        if let clue1 = clue1TextField.text,
           !clue1.isEmpty {
            clues.append(clue1)
        }
        
        if let clue2 = clue2TextField.text,
           !clue2.isEmpty {
            clues.append(clue2)
        }
        if let clue3 =  clue3TextField.text,
           !clue3.isEmpty {
            clues.append(clue3)
        }
        
        
        let poi = POI(location: location, country: country, clues: clues)
        
        delegate?.poiWasAdded(poi)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        
    }
    
}


extension AddPOIViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        switch text {
        case self.locationTextField.text:
            self.countryTextField.becomeFirstResponder()
        case self.countryTextField.text:
            self.clue1TextField.becomeFirstResponder()
        case self.clue1TextField.text:
            self.clue2TextField.becomeFirstResponder()
        case self.clue2TextField.text:
            self.clue3TextField.becomeFirstResponder()
        default:
            self.clue3TextField.resignFirstResponder()
            
        }
        return false
    }

}
