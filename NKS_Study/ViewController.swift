//
//  ViewController.swift
//  NKS_Study
//
//  Created by  LeeMunYoung on 2021/05/31.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    
    @IBOutlet weak var bountyLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refreshNumber()
    }
    
    @IBAction func showAlert() {
        // add alert
        refreshNumber()
        let message = "\(currentValue)"
        
        let alert = UIAlertController(title: "hello", message : message, preferredStyle: .alert)
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
    
    func refreshNumber() {
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "\(currentValue)"
    }


}

