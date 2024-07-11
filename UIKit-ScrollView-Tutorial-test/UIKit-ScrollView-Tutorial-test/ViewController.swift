//
//  ViewController.swift
//  UIKit-ScrollView-Tutorial-test
//
//  Created by Jeff Jeong on 2023/07/02.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var containerScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerScrollView.delegate = self
    }

}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        var offset = scrollView.contentOffset.y / 120
        
        var bgColor : UIColor = UIColor.white
        
        if offset > 1 {
            offset = 1
            bgColor = UIColor.white.withAlphaComponent(offset)
        } else {
            bgColor = UIColor.white.withAlphaComponent(offset)
        }
        
        self.topView.backgroundColor = bgColor
    }
}

