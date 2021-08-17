//
//  PersonViewController.swift
//  DayFinder
//
//  Created by nadezda.gura 
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var accountName: UITextField!
    @IBOutlet weak var accountSurname: UITextField!
    @IBOutlet weak var accountEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    #warning("update storing of login credentials")
    @IBAction func createAccountTapped(_ sender: Any) {
               
        //guard let name = String(accountName.text!), let surname = String(accountSurname.text!), let email = String(accountEmail.text!) else  {return}
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
