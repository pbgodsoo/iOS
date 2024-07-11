//
//  ViewController.swift
//  Uikit-storyboard-tutorial-test
//
//  Created by 박범수 on 6/23/24.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet var yellowView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // yellowView.layer.cornerRadius = 20
        // yellowView.cornerRadius = 30
        // yellowView.layer.borderWidth = 10 // 가장자리 보더라인 두께
        // yellowView.layer.borderColor = UIColor.blue.cgColor
        // yellowView.layer.masksToBounds = false
        // yellowView.layer.cornerRadius = self.yellowView.frame.width /2
    }


}

