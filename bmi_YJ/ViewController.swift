//
//  ViewController.swift
//  bmi_YJ
//  Created by 소프트웨어컴퓨터 on 2021/11/23.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func calcBMI(_ sender: UIButton) {
        if txtHeight.text == "" || txtWeight.text == "" {
            print("Input Error Please input again")
            lblResult.text = "키와 체중을 입력하세요!!"
            return
        }else{
            
            let height = Double(txtHeight.text!)!
            let weight = Double(txtWeight.text!)!
            //옵셔널 스트링형을 언래핑 후 페일러블 이니셜라이저에 의해 옵셔널로 나오기 때문에 언래핑을 한번 더 한다. 그래서 느낌표가 2개이다.
            print(height,weight)
            
        
            let bmi = weight / (height * height * 0.0001)
            let shortendBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 비만"}
            else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0);               body = "2단계 비만"}
            else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0);               body = "1단계 비만"}
            else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0);               body = "정상 체중"}
            else {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0);              body = "저체중"}
            print("BMI:  \(shortendBmi), 판정: \(body)")
                lblResult.backgroundColor = color
                lblResult.clipsToBounds = true
                lblResult.layer.cornerRadius = 15
                lblResult.text = "BMI: \(shortendBmi), 판정: \(body)"
                
            
        }
    }
    
}
