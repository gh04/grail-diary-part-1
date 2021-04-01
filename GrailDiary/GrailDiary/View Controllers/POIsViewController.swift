//
//  POIsViewController.swift
//  GrailDiary
//
//  Created by Gerardo Hernandez on 3/10/21.
//

import UIKit

class POIsTableViewController: UIViewController {
   
    @IBOutlet var tableView: UITableView!
    
    let poi = [POI]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

extension POIsTableViewController: UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return poi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else { fatalError("Cell identifier is wrong or w or the cell is not of type POITableViewCell") }
        
        let pois = poi[indexPath.row]
        
        
        
        return cell
    }
    
    
}
