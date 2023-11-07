//
//  thirdDetailViewController.swift
//  Halloween And Holiday Candy App Review
//
//  Created by Yuki Decker on 11/7/23.
//

import UIKit

class thirdDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
            
            
        }
        
        
    }
}
