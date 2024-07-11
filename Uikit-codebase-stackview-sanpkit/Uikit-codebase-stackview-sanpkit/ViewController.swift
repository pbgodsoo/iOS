//
//  ViewController.swift
//  Uikit-codebase-stackview-sanpkit
//
//  Created by 박범수 on 6/27/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var topStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        
        topStackView.addArrangedSubview(MyCardView.generateMyCardView())
        topStackView.addArrangedSubview(generateMyCardView())
        topStackView.addArrangedSubview(generateCardView())
        
        // (스택 뷰를)서브 뷰로 추가
        self.view.addSubview(topStackView)
        
        // 위치 잡기 - 기존 코드
//        NSLayoutConstraint.activate([
//            topStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            topStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
//            topStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
//            
//        ])
        
        topStackView.snp.makeConstraints {
            // 크기
            // 위치 : x, y
            $0.top.equalToSuperview().offset(100)
//            $0.centerX.equalToSuperview()
//            $0.right.equalToSuperview().offset(-20)
            $0.horizontalEdges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
        }
        
        
        print(#function)
    }

}

// MARK: - view 관련
extension ViewController {
    
    fileprivate func generateMyCardView() -> MyCardView {
        let cardView = MyCardView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        return cardView
    }
    /// 카드뷰 생성 및 반환
    /// - Returns: 카드뷰
    fileprivate func generateCardView() -> UIView {
        let containerView = UIView()
        containerView.backgroundColor = UIColor.systemYellow
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = UILabel()
        titleLabel.text = "사운드\n테라피"
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        
        // 서브타이틀 부분
        let subtitleLabel = UILabel()
        subtitleLabel.text = "무료"
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let subtitleLabelBg = UIView()
        subtitleLabelBg.backgroundColor = UIColor.systemMint
        subtitleLabelBg.translatesAutoresizingMaskIntoConstraints = false
        
        subtitleLabelBg.addSubview(subtitleLabel)
        
        
        NSLayoutConstraint.activate([
            subtitleLabel.centerXAnchor.constraint(equalTo: subtitleLabelBg.centerXAnchor),
            subtitleLabel.centerYAnchor.constraint(equalTo: subtitleLabelBg.centerYAnchor),
            subtitleLabel.topAnchor.constraint(equalTo: subtitleLabelBg.topAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: subtitleLabelBg.leadingAnchor, constant: 5)
        ])
        
        // 이미지 뷰
        let bottomImageView = UIImageView(image: UIImage(systemName: "pencil"))
        bottomImageView.contentMode = .scaleAspectFit
        bottomImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomImageView.widthAnchor.constraint(equalToConstant: 50),
            bottomImageView.heightAnchor.constraint(equalToConstant: 50),

        ])
        
        
        // first뷰에 대한 하위 요소 추가
        containerView.addSubview(titleLabel)
        containerView.addSubview(subtitleLabelBg)
        containerView.addSubview(bottomImageView)
        
        
        // first뷰에 대한 요소들 위치 잡기
        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: 200),
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            subtitleLabelBg.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabelBg.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            bottomImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5),
            bottomImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -5)
        ])
        return containerView
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
