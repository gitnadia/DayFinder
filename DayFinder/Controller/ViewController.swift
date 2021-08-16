//
//  ViewController.swift
//  DayFinder
//
//  Created by nadezda.gura on 
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dayText: UITextField!
    @IBOutlet weak var monthFinder: UITextField!
    @IBOutlet weak var yearFinder: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func findWeekdayTapped(_ sender: Any) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        guard let day = Int(dayText.text!), let month = Int(monthFinder.text!), let year = Int(yearFinder.text!)
        else {
            //alert
            warningPopup(withTitle: "INPUT ERROR", withMessage: "Date text field can't be empty")
            return
        }
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        guard let date = calendar.date(from: dateComponents) else{
            return
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_EN")
        dateFormatter.dateFormat = "EEEE"
        
        switch findButton.titleLabel?.text {
        case "FIND":
            findButton.setTitle("CLEAR", for: .normal)
            if day>=1 && day <= 31 && month >= 1 && month <= 12{
                let weekday = dateFormatter.string(from: date)
                self.resultLabel.text = weekday.capitalized
            }else{
                clearTextField()
                //alert
                warningPopup(withTitle: "WRONG DATE", withMessage: "Please enter the correct date")
            }
        default:
            findButton.setTitle("FIND", for: .normal)
            clearTextField()
        }
    }
    
    func clearTextField() {
        dayText.text = ""
        monthFinder.text = ""
        yearFinder.text = ""
        resultLabel.text = "DAY OF THE WEEK"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func warningPopup(withTitle title: String?, withMessage message:String?){
        DispatchQueue.main.async {
            let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            
            popUp.addAction(okButton)
            self.present(popUp, animated: true, completion: nil)
        }
        
        
        
    }
}
    
    
        
    
    


