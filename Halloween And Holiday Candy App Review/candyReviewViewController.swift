//
//  candyReviewViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 10/31/23.
//

import UIKit

class candyReviewViewController: UIViewController {

    @IBOutlet weak var bigTitle: UILabel!
    
    @IBOutlet weak var labelReview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bigTitle.text = "Yuki's Candy Review"
        labelReview.text = "The Crunch candy bar brings back a lot of memories from my childhood. I remember always wanting to take the Crunch bars from candy bags from my brother, as he too loved Crunch."
        // Do any additional setup after loading the view.
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
