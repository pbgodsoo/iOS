//
//  DetailViewController.swift
//  Uikit-storyboard-tutorial-project
//
//  Created by 박범수 on 6/25/24.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Detail View Controller"
        label.textAlignment = .center
        label.frame = view.bounds
        view.addSubview(label)
    }
}
