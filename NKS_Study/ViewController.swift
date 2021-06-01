//
//  ViewController.swift
//  NKS_Study
//
//  Created by  LeeMunYoung on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        // add alert
        let alert = UIAlertController(title: "hello", message : "MY FIRST APP", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showSecondAlert() {
        let alert = UIAlertController(title: "2nd", message: "YOU CLICK SECOND", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}

