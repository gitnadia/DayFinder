//
//  InfoViewController.swift
//  DayFinder
//
//  Created by nadezda.gura
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var infoText = ""
    var descText = "" //"THIS IS 5TH LECTURES PROJECT"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if !infoText.isEmpty && !descText.isEmpty{
            infoLabel.text = infoText
            descLabel.text = descText
        }
 
        
    }
    

  

}
