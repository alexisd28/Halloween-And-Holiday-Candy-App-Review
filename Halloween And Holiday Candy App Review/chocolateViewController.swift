//
//  chocolateViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 11/1/23.
//

import UIKit

var chocolateArray = ["Crunch Bars", "Twix Bars", "Kit Kats", "Hershey's"]
var chocolateReviewArray = ["5 stars", "5 Stars", "5 Stars", "2 Stars"]



class chocolateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolateArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                      let text = chocolateArray[indexPath.row]
        cell.detailTextLabel?.text = chocolateReviewArray[indexPath.row]
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
