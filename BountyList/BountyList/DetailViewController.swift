//
//  DetailViewController.swift
//  BountyList
//
//  Created by nkstar on 2021/06/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountyLabel : UILabel!
    
    var name : String?
    var bounty : Int?
    var photo : String?


    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        print("\(name) - \(bounty) - \(photo)")
        if let name = self.name, let bounty = self.bounty, let photo = self.photo {
            let img = UIImage(named: "\(photo).png")
            imgView.image = img
            nameLabel.text = name
            bountyLabel.text = "\(bounty)"
        }
    }
    
    @IBAction func close(_ sender : UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
