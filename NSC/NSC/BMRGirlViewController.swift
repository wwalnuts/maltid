//
//  BMRGirlViewController.swift
//  NSC
//
//  Created by Nassaree Suanthaisong on 25/11/2564 BE.
//

import UIKit

class BMRGirlViewController: UIViewController {

    @IBOutlet weak var weightGirlTextFiel: UITextField!
    @IBOutlet weak var heightGirlTextField: UITextField!
    @IBOutlet weak var oldGirlTextField: UITextField!
    
    @IBOutlet weak var BMRGirlLabel: UILabel!
    
    @IBAction func CalGirlButton(_ sender: Any) {
        self.view.endEditing(true)
        
        let wBMRGirl = (weightGirlTextFiel.text! as NSString).doubleValue
        let hBMRGirl = (heightGirlTextField.text! as NSString).doubleValue
        let oldBMRGirl = (oldGirlTextField.text! as NSString).doubleValue
        
        let bmr = 65.1 + (9.6 * wBMRGirl) + (1.9 * hBMRGirl) - (4.7 * oldBMRGirl)
        
        BMRGirlLabel.text = String(format: "%.2f", bmr)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
