//
//  ViewController.swift
//  SecurityKeyboard
//
//  Created by nkstar on 2021/10/18.
//

import UIKit

class ViewController: UIViewController, SecurityKeyboardDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let identifier = String(describing: SecurityKeyboardView.self)
        let nibs = Bundle.main.loadNibNamed(identifier, owner: self, options: nil)

        guard let customView = nibs?.first as? SecurityKeyboardView else { return }
        customView.delegate = self
        secondTextField.inputView = customView
    }

    
    func numberBtnTapped(text: String) {
        secondTextField.text! += text
    }
    
    func deleteBtnTapped(isLongTapped: Bool) {
        if isLongTapped {
            secondTextField.text = ""
        }
        else {
            if secondTextField.text!.count > 0 {
                secondTextField.text?.removeLast()
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

