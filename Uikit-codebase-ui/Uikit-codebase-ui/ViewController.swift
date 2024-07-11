//
//  ViewController.swift
//  Uikit-codebase-ui
//
//  Created by 박범수 on 6/25/24.
//

import UIKit
import SnapKit

// command + option + enter
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        
        // false를 걸어놔야 정상적으로 작동
//        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(yellowView)
        
        yellowView.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
        }
        
//        NSLayoutConstraint.activate([
//            yellowView.widthAnchor.constraint(equalToConstant: 200),
//            yellowView.heightAnchor.constraint(equalToConstant: 200),
//            yellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            yellowView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100)
//        ])
        
//        // 크기완료
//        yellowView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        yellowView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        
//        // 위치
//        yellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        yellowView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        print(#function)
    }


}

#if DEBUG

import SwiftUI

struct ViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        ViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif
