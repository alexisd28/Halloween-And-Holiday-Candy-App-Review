//
//  chocolateCoveredViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 11/1/23.
//

import UIKit

var chocolateCoveredArray = ["Chocolate Covered Strawberries", "Chocolate Covered Pretzels", "Ferrero Rocher", "Chocolate Covered Cherries"]
var chocolateCoveredReviewArray = ["5 Stars", "5 Stars", "4.5 Stars", "4 Stars"]

class chocolateCoveredViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolateCoveredArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                      let text = chocolateCoveredArray[indexPath.row]
        cell.detailTextLabel?.text = chocolateCoveredReviewArray[indexPath.row]
                      cell.textLabel?.text = text
                      return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bigTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigTitle.text = "Yuki's Candy Review"
        
        
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
