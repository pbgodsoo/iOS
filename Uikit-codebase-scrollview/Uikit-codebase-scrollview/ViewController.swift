//
//  ViewController.swift
//  Uikit-codebase-scrollview
//
//  Created by 박범수 on 7/5/24.
//

import UIKit
import Fakery

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let faker = Faker(locale: "ko")
        self.view.backgroundColor = UIColor.white
        
        let contentLabel : UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            label.text = Faker(locale: "ko").lorem.paragraphs(amount: 100)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let containerView : UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.systemYellow
            view.addSubview(contentLabel)
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        NSLayoutConstraint.activate([
            contentLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            contentLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            contentLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            contentLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20)
        ])
        
        let scrollView : UIScrollView = {
            let scroll = UIScrollView()
            scroll.isScrollEnabled = true
            scroll.alwaysBounceVertical = true
            scroll.addSubview(containerView)
            scroll.translatesAutoresizingMaskIntoConstraints = false
            return scroll
        }()
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            containerView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            containerView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1)
        ])
        
        self.view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
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
