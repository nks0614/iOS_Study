//
//  SecurityKeyboardView.swift
//  SecurityKeyboard
//
//  Created by nkstar on 2021/10/18.
//

import UIKit

protocol SecurityKeyboardDelegate {
    func numberBtnTapped(text: String)
    func deleteBtnTapped(isLongTapped: Bool)
}

class SecurityKeyboardView: UIView {
    
    @IBOutlet var numBtnList: [UIButton]!
    
    var numList: [String] = [String](arrayLiteral: "1", "2", "3", "4", "5", "6", "7", "8", "9", "0",  " ", " ")
    @IBOutlet weak var delBtn: UIButton!
    
    var delegate: SecurityKeyboardDelegate?
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.loadView()
    }
    
    private func loadView() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(delBtnLongClick))
        delBtn.addGestureRecognizer(longPress)
        
        self.shuffle()
    }
    
    private func shuffle() {
        numList.shuffle()
        numBtnList.enumerated().forEach {
            $0.1.setTitle(numList[$0.0], for: .normal)
        }
    }
    
    @objc private func delBtnLongClick() {
        delegate?.deleteBtnTapped(isLongTapped: true)
    }
    
    @IBAction func reloactionNum(_ sender: Any) {
        self.shuffle()
    }
    
    @IBAction func delBtnClick(_ sender: Any) {
        delegate?.deleteBtnTapped(isLongTapped: false)
    }
    
    
    @IBAction func numBtnClick(_ sender: UIButton) {
        if sender.currentTitle == " " { return }
        
        delegate?.numberBtnTapped(text: sender.currentTitle!)
    }
    
    
    
    
    

}
