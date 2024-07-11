//
//  ViewController.swift
//  Uikit-storyboard-priority
//
//  Created by 박범수 on 7/8/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trailingAnchor: NSLayoutConstraint!
    
    @IBOutlet var leadingAnchor: NSLayoutConstraint!
    
    var isLeadingFocused : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onBtnClicked(_ sender: UIButton) {
        print(#file, #function, #line, "- dkfjs")
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.5) {
            if self.isLeadingFocused { // 왼쪽 포커스 주기
                self.trailingAnchor.isActive = false
                self.leadingAnchor.isActive = true
                
//                self.trailingAnchor.priority = UILayoutPriority.defaultLow
//                self.leadingAnchor.priority = UILayoutPriority.defaultHigh
                
//                self.trailingAnchor.priority = UILayoutPriority(rawValue: 999)
//                self.leadingAnchor.priority = UILayoutPriority(rawValue: 1000)
            } else { // 오른쪽 포커스 주기
                self.leadingAnchor.isActive = false
                self.trailingAnchor.isActive = true
                
//                self.leadingAnchor.priority = UILayoutPriority.defaultLow
//                self.trailingAnchor.priority = UILayoutPriority.defaultHigh
                
//                self.leadingAnchor.priority = UILayoutPriority(rawValue: 999)
//                self.trailingAnchor.priority = UILayoutPriority(rawValue: 1000)
            }
            self.isLeadingFocused.toggle()
            self.view.layoutIfNeeded()
        }
    }
    
}

