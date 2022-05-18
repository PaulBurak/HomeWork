//  printer.Greeting(name: "Stroka" , secondName: "Petya")

//  ViewController.swift
//  HomeWork
//
//  Created by PAUL BURAK on 11.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    // данные от первой практической
    
        let num1: Double = 2.5
        let num2: Double = 9.7
        let num3: Double = 6.9
        let num4: Double = 8.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //данные от первой практической
        
            print("первое число    \(num1)")
            print("второе число    \(num2)")
            print("третье число    \(num3)")
            print("четвёртое число \(num4)")
            print("____________________")

            let SummFull = Int(num1) + Int(num2) + Int(num3) + Int(num4) //сумма целых частей
            print("Сумма отдельно целых частей чисел: \(SummFull)")
    
            if SummFull % 2 == 0 {                        //проверка на четность
                print("это число четное")
            } else {
                print ("это число нечетное")
            }
    
            let SummDrob = (num1 - Double(Int(num1))) + (num2 - Double(Int(num2))) + (num3 - Double(Int(num3))) + (num4 - Double(Int(num4)))
            print("Сумма отдельно дробных частей чисел: \(Double(SummDrob))") //сумма дробных частей
    
           if Int(SummDrob) % 2 == 0 {           //проверка на четность
              print("если округлить, это число четное")
            } else {
              print("если округлить, это число нечетное")
            }
        
    }
}
