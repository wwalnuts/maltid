//
//  BMRBoyViewController.swift
//  NSC
//
//  Created by Nassaree Suanthaisong on 25/11/2564 BE.
//

import UIKit

class BMRBoyViewController: UIViewController {

    @IBOutlet weak var weightBoyTextField: UITextField!
    @IBOutlet weak var heightBoyTextField: UITextField!
    @IBOutlet weak var oldBoyTextField: UITextField!
    @IBOutlet weak var BMRBoyLabel: UILabel!
    
    
    @IBAction func CalBMRBoyButton(_ sender: Any) {
        self.view.endEditing(true)
        
        let wBMRBoy = (weightBoyTextField.text! as NSString).doubleValue
        let hBMRBoy = (heightBoyTextField.text! as NSString).doubleValue
        let oldBMRBoy = (oldBoyTextField.text! as NSString).doubleValue
        
        let bmr = 66.5 + (1.8 * wBMRBoy) + (5 * hBMRBoy) - (6.8 * oldBMRBoy)
        
        BMRBoyLabel.text = String(format: "%.2f", bmr)
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
