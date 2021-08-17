//
//  AppearenceViewController.swift
//  DayFinder
//
//  Created by nadezda.gura
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func openSettingsTapped(_ sender: Any) {
        openSettings()
    }
    
    func setLabelText(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "DARK MODE IS ON \ngo to settings if you would like \n to change to LIGHT MODE"
        }else{
            text = "LIGHT MODE IS ON \ngo to settings if you would like \n to change to DARK MODE"
        }
        textLabel.text = text
    }
    
    func openSettings(){
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
        return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]){
                success in
                print("SUCCESS", success)
            }
        }
     
        
    }
    
}


extension AppearenceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
    
}
