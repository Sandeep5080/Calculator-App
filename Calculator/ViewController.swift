//
//  ViewController.swift
//  Calculator
//
//  Created by Sandeep Reddy on 19/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uiTextFieldResult: UILabel!
    
    
    var varNumber1 = 0
    var varNumber2 = 0
    var varNumberResult = 0
    var varOperator = "+"
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func button1(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "3"
    }
    
    @IBAction func button4(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "4"
    }
    
    @IBAction func button5(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "6"
    }
    
    @IBAction func button7(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "7"
    }
    
    @IBAction func button8(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "8"
    }
    @IBAction func button9(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "9"
    }
    @IBAction func button0(_ sender: Any) {
        uiTextFieldResult.text = uiTextFieldResult.text! + "0"
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        varOperator = "+"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    @IBAction func buttonMinus(_ sender: Any) {
        varOperator = "-"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    
    @IBAction func buttonMultiplication(_ sender: Any) {
        varOperator = "*"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonDivision(_ sender: Any) {
        varOperator = "/"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        varNumber2 = Int(uiTextFieldResult.text!)!
        
        switch varOperator {
        case "+":
            varNumberResult = varNumber1+varNumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "-":
            varNumberResult = varNumber1-varNumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "*":
            varNumberResult = varNumber1*varNumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "/":
            varNumberResult = varNumber1/varNumber2
            uiTextFieldResult.text = String(varNumberResult)
        default:
            uiTextFieldResult.text = "ERROR"
            
        }
    }
        
        @IBAction func buttonClear(_ sender: Any) {
            clearText()
        }
        
        func clearText() {
            uiTextFieldResult.text = ""
        }
    }



