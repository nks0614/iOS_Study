//
//  ViewController.swift
//  PageControl
//
//  Created by nkstar on 2021/07/08.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["IMG_1633.PNG","IMG_1634.PNG","IMG_1635.PNG","IMG_1637.PNG","IMG_1640.PNG","IMG_1643.PNG"]

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.blue
        
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

