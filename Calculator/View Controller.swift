//
//  View Controller.swift
//  calcualtor
//
//  Created by Levan Gorjeladze on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var secondNumber : Double = 0
    var firstNumber : Double = 0
    var check = false
    var operation : Int = 0
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func didgits(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        if check == true{
            result.text = String(tagButton)
            check = false
        } else {
            
            result.text = result.text! + String(tagButton)
            
        }
        secondNumber = Double(result.text!)!
        
    }
    @IBAction func buttons(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        if result.text != "" && tagButton != 10 && tagButton != 17{
            firstNumber = Double(result.text!)!
        }
        
        if tagButton == 10 {
            result.text = "0"
            secondNumber = 0
            firstNumber = 0
        }
        
        if tagButton == 13 {
            result.text = "/"
            operation = tagButton
            check = true
        }else if tagButton == 14 {
            result.text = "x"
            operation = tagButton
            check = true
        }else if tagButton == 15 {
            result.text = "-"
            operation = tagButton
            check = true
        }else if tagButton == 16 {
            result.text = "+"
            operation = tagButton
            check = true
        } else if tagButton == 17 {
            if operation == 13 {
                result.text = String(firstNumber / secondNumber)
            }else if operation == 16 {
                result.text = String(firstNumber + secondNumber)
            }else if operation == 15{
                result.text = String(firstNumber - secondNumber)
            }else if operation == 14{
                result.text = String(firstNumber * secondNumber)
            }
        }
    }
    
}
