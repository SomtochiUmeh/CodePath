//
//  ViewController.swift
//  PreWork1
//
//  Created by Somtochi Umeh on 1/6/22.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var Background: UIView!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        TextLabel.textColor = UIColor.orange
    }

    @IBAction func ButtonClicked2(_ sender: Any) {
        TextLabel.text = "Goodbye👋🏾"
    }

    @IBAction func ButtonClicked1(_ sender: Any) {
        Background.backgroundColor = UIColor.brown
    }

    @IBAction func resetButton(_ sender: Any) {
        TextLabel.text = "Hello World"
        TextLabel.textColor = UIColor.white
        Background.backgroundColor = UIColor.systemTeal
        textField.text = ""
        textField.resignFirstResponder()
    }
    
    @IBAction func changeText(_ sender: Any) {
        if textField.text == "" {
            TextLabel.text = "Hello World"
        } else {
        TextLabel.text = "\(textField.text!)"
        }
    }
    
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



