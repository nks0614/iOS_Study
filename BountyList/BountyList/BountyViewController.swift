//
//  BountyViewController.swift
//  BountyList
//
//  Created by nkstar on 2021/06/24.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let photoList = ["IMG_1633", "IMG_1634", "IMG_1635", "IMG_1637", "IMG_1640", "IMG_1643"]
    let nameList = ["냠냠 김영재", "수풀 삼총사", "마네키네코 김동희", "자기야 왜 칭얼거려 김동희", "미안해요 영감 양준혁", "[권능 : 지배] 김근훈"]
    let bountyList = [50000, 3000, 200000, 300000, 120000, 2340000]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 몇개를 보여줄까?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    // 셀은 어떻게 표현할까?
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        // img, name, bounty
        let img = UIImage(named: "\(photoList[indexPath.row]).png")
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        
        return cell
    }
    
    // 셀이 클릭되었을 때 어칼래?

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---->\(indexPath.row)")
    }
    
}

class ListCell : UITableViewCell {
    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountyLabel : UILabel!
    
}
