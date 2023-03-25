//
//  DetailsViewController.swift
//  citySightseeing
//
//  Created by Hande Erdal on 24.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var citynameLabel: UILabel!
    @IBOutlet weak var teritoryLabel: UILabel!
    
    var chosenCity : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        citynameLabel.text = chosenCity?.name
        imageView.image = chosenCity?.image
        teritoryLabel.text = chosenCity?.teritory

        // Do any additional setup after loading the view.
    }
    
    
    



}
