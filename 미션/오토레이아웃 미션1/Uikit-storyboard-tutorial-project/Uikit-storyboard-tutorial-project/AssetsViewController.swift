//
//  AssetsViewController.swift
//  Uikit-storyboard-tutorial-project
//
//  Created by 박범수 on 6/24/24.
//

import Foundation
import UIKit

class AssetsViewController: UIViewController {

    @IBOutlet var StartView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationBar = self.navigationController?.navigationBar {
                let transparentImage = createTransparentImage()
                navigationBar.shadowImage = transparentImage
                navigationBar.setBackgroundImage(UIImage(), for: .default) // 배경 이미지를 투명하게 설정
                navigationBar.isTranslucent = true // 네비게이션 바를 투명하게 설정
            }

    }
    func createTransparentImage() -> UIImage {
        let size = CGSize(width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        UIColor.clear.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))
        let transparentImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return transparentImage ?? UIImage()
    }

}

