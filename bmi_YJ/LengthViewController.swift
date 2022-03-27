//
//  LengthViewController.swift
//  bmi_YJ
//
//  Created by 소프트웨어컴퓨터 on 2021/12/07.
//

import UIKit

class LengthViewController: UIViewController {

    @IBOutlet weak var txtCm: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBOutlet weak var txtKm: UITextField!
    @IBOutlet weak var lblResult2: UILabel!
    
    @IBAction func conv1(_ sender: UIButton) {
        
        if txtCm.text == ""{
        print("Input Error")
            lblResult.text = "알맞은 값을 입력하세요!"
        return
        }else{
            let cm = Double(txtCm.text!)!
            print(cm)
            let inch = cm / 2.54
            let shotendI = String(format: "%.2f", inch)
            
            lblResult.text = "cm -> inch \(shotendI)"
        }
    }
    
    
    @IBAction func conv2(_ sender: UIButton) {
        
        if txtKm.text == ""{
        print("Input Error")
            lblResult2.text = "알맞은 값을 입력하세요!"
        return
        }else{
            let km = Double(txtKm.text!)!
            print(km)
            let mile = km / 1.609
            let shotendM = String(format: "%.2f", mile)
            
            lblResult2.text = "km -> mile \(shotendM)"
        }
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
