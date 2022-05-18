//
//  ViewController.swift
//  HomeWork2
//
//  Created by Друг Сердечный on 18.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let summing = summing(N1: 4, N2: 3)
        print(summing)
        let vychet = vychet(N1: 4, N2: 3)
        print(vychet)
        let umnozh = umnozh(N1: 4, N2: 3)
        print(umnozh)
        let delenie = delenie(N1: 8, N2: 2)
        print(delenie)
        //let peregr = summing(N1: 2.1, N2: 3.5) //
        //print("Перегрузка \(peregr)") //перегрузка функции
        
        
        
    }
    func summing(N1:Int, N2: Int) -> Int {   //сложение
        return N1 + N2
    }

    func vychet(N1:Int, N2: Int) -> Int { //вычетание
        return N1 - N2
    }

    func umnozh(N1: Int, N2: Int) ->Int {   //умножение
        return N1 * N2
    }

    func delenie(N1: Int, N2: Int) -> Int {  //деление
        return N1 / N2
    }

    // в перегрузку пока не вник
    
    func summing(N1:Double, N2:Double) -> Double {
        return N1 + N2
    }

    func sravnenie(st1: String, str2: String) -> String { //сравнение строк авб и ввш
        let one = "авб"
        let two = "ввш"
        if one == two {
            return "строки равны между собой"
        } else {
            return "строки не равны между собой"
        }
    }

    //циклический вызов функции
    static func cyclefunc (x: Int8) -> Int8 {
        return x
    }

    //вычисление факториала числа
    static func factorialN(_ N3: Int) -> Int {
        var m = 1
        for i in 1...N3 {
            m *= i
        }
        return m    }
    }



