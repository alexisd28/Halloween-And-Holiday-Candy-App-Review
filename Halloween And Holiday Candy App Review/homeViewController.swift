//
//  homeViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 10/31/23.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var featuredCandyTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelTitle.text = "Yuki's Candy Reviews"
        featuredCandyTitle.text = "Featured Candy: Crunch Chocolate Bars"
    }
    
}
