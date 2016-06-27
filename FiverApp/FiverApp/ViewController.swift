//
//  ViewController.swift
//  FiverApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var detailVariable : Fiver?
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
     super.viewDidLoad()
        
        
        self.detailImageView.image = UIImage(named: detailVariable!.imageNameString)
        self.detailNameLabel.text = detailVariable?.name
        self.detailDescriptionLabel.text = detailVariable?.discriptionString
        
    }



}
