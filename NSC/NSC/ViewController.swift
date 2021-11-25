//
//  ViewController.swift
//  NSC
//
//  Created by Nassaree Suanthaisong on 25/11/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tableLable: UILabel!
    

    @IBAction func calculateButton(_ sender: Any) {
        self.view.endEditing(true)
        
        let weight = (weightTextField.text! as NSString).doubleValue
        let height = (heightTextField.text! as NSString).doubleValue
        let bmi = weight / pow(height, 2)
        
        resultLabel.text = String(format: "%.2f", bmi)
        
        if bmi < 18.5 {
            tableLable.text = "คุณมีน้ำหนักที่น้อยเกินไป ไม่เป็นผลดีต่อสุขภาพสักเท่าไหร่ ยิ่งหากเป็นคนที่ส่วนสูงมากด้วยแล้ว การมีน้ำหนักน้อยเกินไป อาจเสี่ยงต่อการได้รับสารอาหารไม่เพียงพอ ส่งผลให้ร่างกายอ่อนเพลียง่าย ควรหันมาเน้นเรื่องการรับประทานอาหารให้เพียงพอ และออกกำลังกายแบบเพื่อเสริมสร้างกล้ามเนื้อ สามารถช่วยเพิ่มค่า BMI ให้อยู่ในเกณฑ์ปกติได้"
        }
        else if bmi < 23 {
            tableLable.text =
            "คุณมีน้ำหนักจัดอยู่ในเกณฑ์ปกติโอกาสการเกิดโรคที่มาจากจากความอ้วนน้อย ทำให้ค่าความเสี่ยงที่จะเกิดโรคต่างๆน้อยตามลงไป พยายามรักษาระดับค่า BMI ให้อยู่ในระดับนี้"
        }
        else if bmi < 25 {
            tableLable.text = "คุณมีน้ำหนักไม่ถือว่าอ้วน แต่ควรพยายามลดน้ำหนักลงอีกสักนิด เพื่อให้เข้าสู่ค่ามาตรฐาน ค่า BMI ในกลุ่มนี้ ถือว่ามีความเสี่ยงเข้าข่ายความอ้วนอยู่บ้าง หากประวัติคนในครอบครัวเคยเป็นโรคเบาหวานและความดันโลหิตสูง ก็ถือว่ายังมีความเสี่ยงมากกว่าคนปกติ"
        }
        else if bmi < 30 {
            tableLable.text = "คุณมีน้ำหนักอยู่ในเกณฑ์อ้วน ในระดับหนึ่ง ยังมีความเสี่ยงต่อการเกิดโรคที่มากับความอ้วน เช่นโรคเบาหวาน และความดันโลหิตสูง"
        }
        else {
            tableLable.text = "คุณมีน้ำหนักเข้าเกณฑ์อ้วนมาก เสี่ยงต่อการเกิดโรคร้ายแรงที่แฝงมากับความอ้วน ต้องระวังการรับประทานอาหารประเภทไขมัน และควรออกกำลังกายอย่างสม่ำเสมอ"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""
        tableLable.text = ""
    }
   // override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
    //}


    //@IBAction func calculateButton(_ sender: AnyObject) {
      //  let w = weightTextField.text?.count
        //let h = heightTextField.text?.count
        
        //let ans = w / (h * h)
        
        //resultLabel.text = "Your BMI = \(ans)"
        
   // }
    
}

