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

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
    }
    
  

}
