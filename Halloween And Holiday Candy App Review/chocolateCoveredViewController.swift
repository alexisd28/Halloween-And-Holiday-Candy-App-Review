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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! fourthDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryThreeImagesData[imageIndex!]
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bigTitle: UILabel!
    var categoryThreeImagesData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigTitle.text = "Yuki's Candy Review"
        
        
        super.viewDidLoad()
        //part 8
        let path = Bundle.main.path(forResource: "Property List 3", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryThreeImagesData = dict!.object(forKey:"CategoryThreeImages") as! [String]
        
        
        
        
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
