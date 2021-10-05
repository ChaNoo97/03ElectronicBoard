//
//  MainViewController.swift
//  LEDBoard
//
//  Created by Hoo's MacBookAir on 2021/10/01.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate{

	@IBOutlet var mainView: UIView!
	@IBOutlet weak var topView: UIView!
	@IBOutlet weak var mainLable: UILabel!
	@IBOutlet weak var sendButton: UIButton!
	@IBOutlet weak var colorButton: UIButton!
	@IBOutlet weak var inputTextfiled: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		mainView.backgroundColor = .black
		
		topView.layer.cornerRadius = 10
		
		mainLable.textColor = .white
		mainLable.adjustsFontSizeToFitWidth = true
		mainLable.textAlignment = .center
		mainLable.text="텍스트 입력후 보내기!"
		
		
		inputTextfiled.placeholder = "텍스트를 입력해주세요"
		inputTextfiled.keyboardType = .default
		inputTextfiled.delegate = self
		
		sendButton.setTitle("보내기", for: .normal)
		sendButton.setTitleColor(.black, for: .normal)
		sendButton.layer.borderColor = UIColor.black.cgColor
		sendButton.layer.borderWidth = 2
		sendButton.layer.cornerRadius = 10
		
		colorButton.setTitle("Aa", for: .normal)
		colorButton.setTitleColor(.red, for:  .normal)
		colorButton.layer.borderColor = UIColor.black.cgColor
		colorButton.layer.borderWidth = 2
		colorButton.layer.cornerRadius = 10
    }
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return true
	}
	
	@IBAction func sendButtonClick(_ sender: UIButton) {
		mainLable.text = inputTextfiled.text
		
	}
	@IBAction func colorButtonClick(_ sender: Any) {
		let r : CGFloat = CGFloat.random(in: 0.5...1)
		let g : CGFloat = CGFloat.random(in: 0.5...1)
		let b : CGFloat = CGFloat.random(in: 0.5...1)
		let a : CGFloat = CGFloat.random(in: 0.5...1)
		let rgba = UIColor(red: r, green: g, blue: b, alpha: a)
		mainLable.textColor = rgba
	}
	
	@IBAction func keyboardDown(_ sender: UITextField) {
		
	}
	@IBAction func tapMainView(_ sender: Any) {
		if topView.isHidden {
			topView.isHidden = false
		} else {
			topView.isHidden = true
		}
		
		
	}
	

}
