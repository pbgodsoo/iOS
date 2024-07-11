//
//  ViewController.swift
//  Uikit-codebase-scrollview-snapkit
//
//  Created by 박범수 on 7/5/24.
//

import UIKit
import Fakery
import SnapKit
import Then

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        //setupScrollViewDefault()
        setupScrollViewSnp()
    }


}

//MARK: - UI 세팅
extension ViewController {
    
    /// 스냅킷 스크롤뷰 셋업
    fileprivate func setupScrollViewSnp(){
        let contentLabel : UILabel = UILabel().then {
            $0.numberOfLines = 0
            $0.text = Faker(locale: "ko").lorem.paragraphs(amount: 100)
        }
        
        let containerView : UIView = UIView().then {
            $0.backgroundColor = UIColor.systemYellow
            $0.addSubview(contentLabel)
        }
        
        contentLabel.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(20)
        }
        
        let scrollView : UIScrollView = UIScrollView().then {
            $0.isScrollEnabled = true
            $0.alwaysBounceVertical = true
            $0.addSubview(containerView)
        }
        
        containerView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide.snp.edges)
            $0.width.equalTo(scrollView.frameLayoutGuide.snp.width)
        }
        
        self.view.addSubview(scrollView)
        
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    /// 기본 스크롤뷰 셋업
    fileprivate func setupScrollViewDefault(){
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
