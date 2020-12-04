//
//  ViewController.swift
//  calculator
//
//  Created by Weronika Materna on 03/12/2020.
//  Copyright © 2020 Weronika Materna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


	
	@IBOutlet weak var resultDisplay: UILabel!
	var finishedTypingNumer = true
	var result: Double = 0.0
	var prevNumber: String = "0"
	var currentSymbol: String = "+"
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
	}
	

	@IBAction func clearButton(_ sender: UIButton) {
		resultDisplay.text = ""
	}
	
	@IBAction func numerSelected(_ sender: UIButton) {
		
		if let textToDisplay = sender.currentTitle {
			if finishedTypingNumer {
				resultDisplay.text = textToDisplay
				finishedTypingNumer = false
			} else {
				resultDisplay.text = resultDisplay.text! + textToDisplay
			}
		}
	}
	
	
	@IBAction func symbolPressed(_ sender: UIButton) {
		if let currentNumber = resultDisplay.text {
			prevNumber = currentNumber
			currentSymbol = sender.currentTitle!
			finishedTypingNumer = true
		}
		
	}
	
	
	@IBAction func calculateResult(_ sender: UIButton) {
		if let secondNumber = resultDisplay.text {
			if secondNumber != ""{
			switch currentSymbol{
					case "+":
						result = Double(prevNumber)! + Double(secondNumber)!
					case "-":
						result = Double(prevNumber)! - Double(secondNumber)!
					case "*":
						result = Double(prevNumber)! * Double(secondNumber)!
					case "÷":
						result = Double(prevNumber)! / Double(secondNumber)!
					default:
						print("Unknown action")
					}
				resultDisplay.text = String(result)
				finishedTypingNumer = true
			} else {
				print("= was pressed without any number")
				return
			}
	}

}
}

