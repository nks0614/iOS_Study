//
//  ViewController.swift
//  NKS_Study
//
//  Created by  LeeMunYoung on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        // add alert
        let message = "\(currentValue)"
        
        let alert = UIAlertController(title: "hello", message : message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
    }
    
    @IBAction func showSecondAlert() {
        let alert = UIAlertController(title: "2nd", message: "YOU CLICK SECOND", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}

