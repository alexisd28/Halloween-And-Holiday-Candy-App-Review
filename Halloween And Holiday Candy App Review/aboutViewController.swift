//
//  aboutViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 11/1/23.
//

import UIKit

class aboutViewController: UIViewController {
    @IBOutlet weak var bigTitle: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigTitle.text = "Yuki's Candy Review"
        aboutMeLabel.text = "Hi everyone! I'm Yuki and I find joy in tasting different types of candies! I prefer ones from Japan, as they are not too sweet and have a really wide flavor options. I am also an artist and a crafter with a love for many different hobbies like drawing, resin, jewelry, and plants!"
        
        titleLabel.text = "Candy Reviewer:"
        nameLabel.text = "Yuki Decker"
        
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
