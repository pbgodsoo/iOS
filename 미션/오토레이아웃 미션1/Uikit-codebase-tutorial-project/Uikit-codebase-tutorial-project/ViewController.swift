//
//  ViewController.swift
//  Uikit-codebase-tutorial-project
//
//  Created by 박범수 on 6/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    // AssetsRegistrationView 인스턴스 생성
    private let assetsRegistrationView = AssetsRegistrationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // 뷰 설정 메서드
    private func setupView() {
        view.addSubview(assetsRegistrationView)
        assetsRegistrationView.translatesAutoresizingMaskIntoConstraints = false
        
        // AssetsRegistrationView의 제약조건 설정
        NSLayoutConstraint.fitToEdges(childeView: assetsRegistrationView, parentView: self.view)
    }
    
}

extension NSLayoutConstraint {
    static func fitToEdges (childeView: UIView, parentView: UIView) {
        NSLayoutConstraint.activate([
            childeView.topAnchor.constraint(equalTo: parentView.topAnchor),
            childeView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor),
            childeView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor),
            childeView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
        ])
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
