//
//  ScaleViewController.swift
//  bmi_YJ
//
//  Created by 소프트웨어컴퓨터 on 2021/12/05.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var txtKilo: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var lblResult2: UILabel!
    
    @IBAction func convWei(_ sender: UIButton) {
        
        let kilo = Double(txtKilo.text!)!
   
        print(kilo)
        let pound = kilo * 2.205
        let shortenedP = String(format: "%.1f", pound)
        
        print("Pound:\(shortenedP)")
        lblResult.text = "Kg to Pound \(shortenedP)"
    }
    
    @IBAction func convWei2(_ sender: UIButton) {
        let pound = Double(txtPound.text!)!
        
        print(pound)
        let kilo = pound / 2.205
        let shortenedK = String(format: "%.3f",kilo)
        
        print("Kilo:\(shortenedK)")
        lblResult2.text = "Pound to Kg \(shortenedK)"
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
