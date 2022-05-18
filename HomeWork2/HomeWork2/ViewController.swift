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
        //print("Перегрузка \(peregr)") //перегрузка функции чёт не сработала
        
        // let sravnenie(str1: "авб", str2: "ввш") //не понял, как дальше быть
        print(sravnenie)
    
       // print(factorialN)
       // ViewController.factorialN(5)
        
        
        
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
    
    func summing(N1:Double, N2:Double) -> Double { //перегрузка
        return N1 + N2
    }

    func sravnenie(str1: String, str2: String) -> String {  //сравнение строк авб и ввш
            let resultat: String
            
        if str1 > str2 {
            resultat = "Строка \(str1) больше строки \(str2)\n"
            print(resultat)
            return resultat
        } else if str1 < str2 {
            resultat = "Строка \(str1) меньше строки \(str2)\n"
            print(resultat)
            return resultat
        } else {
            resultat = "Строка \(str1) меньше строки \(str2)\n"
            print(resultat)
            return resultat
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



