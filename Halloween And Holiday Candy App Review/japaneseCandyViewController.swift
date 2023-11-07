//
//  japaneseCandyViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 11/1/23.
//

import UIKit

var japaneseCandyArray = ["Poppin' Cookin'", "Pocky", "HiChew", "Konpeito"]
var japaneseCandyReviewArray = ["5 Stars", "5 Stars", "4 Stars", "3 Stars"]

class japaneseCandyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return japaneseCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = japaneseCandyArray[indexPath.row]
        cell.detailTextLabel?.text = japaneseCandyReviewArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! thirdDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryTwoImagesData[imageIndex!]
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bigTitle: UILabel!
    var categoryTwoImagesData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        bigTitle.text = "Yuki's Candy Review"
        
        
        
            super.viewDidLoad()
            //part 8
            let path = Bundle.main.path(forResource: "Property List 2", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]
            
        }
    }
