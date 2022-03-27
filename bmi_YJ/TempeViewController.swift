//
//  TempeViewController.swift
//  bmi_YJ
//
//  Created by 소프트웨어컴퓨터 on 2021/12/05.
//

import UIKit

class TempeViewController: UIViewController {

    @IBOutlet weak var txtCel: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtFah: UITextField!
    @IBOutlet weak var lblResult2: UILabel!
    
    
    @IBAction func conCel(_ sender: UIButton) {
        
        let cel = Double(txtCel.text!)!
        
        print(cel)
        let faren = (cel * (9 / 5)) + 32
        let shortendF = String(format: "%.1f",faren)
        print("Fahrenheit \(shortendF)")
        lblResult.text = "C to F \(shortendF)"
    }
    
    @IBAction func conFah(_ sender: UIButton) {
        
        let faren = Double(txtFah.text!)!
        print(faren)
        let cel = (faren - 32) * 5 / 9
        let shortendC = String(format: "%.1f", cel)
        print("CelSius \(shortendC)")
        lblResult2.text = "F to C \(shortendC)"
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
