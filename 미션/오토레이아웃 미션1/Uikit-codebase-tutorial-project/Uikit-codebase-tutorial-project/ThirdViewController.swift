//
//  ThirdViewController.swift
//  Uikit-codebase-tutorial-project
//
//  Created by 박범수 on 7/1/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let whiteView = UIView()
    let nextboxView = UIView()
    let nextdoLabel = UILabel()
    let yesboxView = UIView()
    let yesLabel = UILabel()
    let scrollView = UIScrollView()
    let encloseView = UIView()
    let lockView = UIImageView()
    let nextLabel = UILabel()
    let settingLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배경색 변경
        view.backgroundColor = UIColor.systemGray5
        setupUIElements()
        setupConstraints()
    }
}

//MARK: - UI세팅
extension ThirdViewController {

    /// UI 셋업
    func setupUIElements() {
        // 하얀색 뷰 설정
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 30
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(whiteView)
        
        // 다음에 할게요 박스 설정
        nextboxView.backgroundColor = UIColor.systemGray6
        nextboxView.layer.cornerRadius = 10
        nextboxView.layer.masksToBounds = true
        nextboxView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.addSubview(nextboxView)
        
        // "다음에 할게요" 라벨
        nextdoLabel.text = "다음에 할게요"
        nextdoLabel.textColor = .systemBlue
        nextdoLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        nextdoLabel.textAlignment = .center
        nextdoLabel.translatesAutoresizingMaskIntoConstraints = false
        nextboxView.addSubview(nextdoLabel)
        
        // 네, 좋아요 박스 설정
        yesboxView.backgroundColor = UIColor.systemBlue
        yesboxView.layer.cornerRadius = 10
        yesboxView.layer.masksToBounds = true
        yesboxView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.addSubview(yesboxView)
        
        // "네, 좋아요" 라벨
        yesLabel.text = "네, 좋아요"
        yesLabel.textColor = .white
        yesLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        yesLabel.textAlignment = .center
        yesLabel.translatesAutoresizingMaskIntoConstraints = false
        yesboxView.addSubview(yesLabel)
        
        // 스크롤뷰 설정
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.addSubview(scrollView)
        
        // 스크롤뷰에 들어갈 뷰
        encloseView.backgroundColor = UIColor.white
        encloseView.layer.cornerRadius = 100
        encloseView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(encloseView)
        
        // 자물쇠 이미지 설정
        if let lockImage = UIImage(named: "lock") {
            lockView.image = lockImage
        } else {
            print("Error: 'lockImage' 이미지 로드 실패")
        }
        lockView.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(lockView)
        
        // "다음부터" 메시지 설정
        nextLabel.text = "다음부터\n자동으로 로그인할까요?"
        nextLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        nextLabel.numberOfLines = 2
        nextLabel.textAlignment = .center
        nextLabel.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(nextLabel)
        
        // "설정" 메시지 설정
        settingLabel.text = "'설정'에서 언제든 변경할 수 있어요."
        settingLabel.textColor = .systemGray
        settingLabel.font = UIFont.systemFont(ofSize: 17)
        settingLabel.numberOfLines = 2
        settingLabel.textAlignment = .center
        settingLabel.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(settingLabel)
    }
    
    /// 위치, 크기 셋업
    func setupConstraints() {
        // 하얀색 뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            whiteView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            whiteView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            whiteView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)
        ])
        
        // 다음에 할게요 박스 위치 크기 설정
        NSLayoutConstraint.activate([
            nextboxView.heightAnchor.constraint(equalToConstant: 55),
            nextboxView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextboxView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            nextboxView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -40)
        ])
        
        // "다음에 할게요" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            nextdoLabel.centerXAnchor.constraint(equalTo: nextboxView.centerXAnchor),
            nextdoLabel.centerYAnchor.constraint(equalTo: nextboxView.centerYAnchor),
            nextdoLabel.leadingAnchor.constraint(equalTo: nextboxView.leadingAnchor, constant: 0)
        ])
        
        // 네, 좋아요 박스 위치 크기 설정
        NSLayoutConstraint.activate([
            yesboxView.heightAnchor.constraint(equalToConstant: 55),
            yesboxView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yesboxView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 24),
            yesboxView.bottomAnchor.constraint(equalTo: nextboxView.topAnchor, constant: -5)
        ])
        
        // "네, 좋아요" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            yesLabel.centerXAnchor.constraint(equalTo: yesboxView.centerXAnchor),
            yesLabel.centerYAnchor.constraint(equalTo: yesboxView.centerYAnchor),
            yesLabel.leadingAnchor.constraint(equalTo: yesboxView.leadingAnchor, constant: 0)
        ])
        
        // 스크롤뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: yesboxView.topAnchor, constant: -5)
        ])
        
        // 스크롤뷰에 들어갈 뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            encloseView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            encloseView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            encloseView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            encloseView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            encloseView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1)
        ])
        
        // 자물쇠 이미지 위치 크기 설정
        NSLayoutConstraint.activate([
            lockView.topAnchor.constraint(equalTo: encloseView.topAnchor, constant: 60),
            lockView.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            lockView.widthAnchor.constraint(equalToConstant: 100),
            lockView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // "다음부터" 메시지 위치 크기 설정
        NSLayoutConstraint.activate([
            nextLabel.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            nextLabel.topAnchor.constraint(equalTo: lockView.bottomAnchor, constant: 30),
            nextLabel.leadingAnchor.constraint(equalTo: encloseView.leadingAnchor, constant: 0)
        ])
        
        // "설정" 메시지 위치 크기 설정
        NSLayoutConstraint.activate([
            settingLabel.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            settingLabel.topAnchor.constraint(equalTo: nextLabel.bottomAnchor, constant: 15),
            settingLabel.leadingAnchor.constraint(equalTo: encloseView.leadingAnchor, constant: 0),
            settingLabel.bottomAnchor.constraint(equalTo: encloseView.bottomAnchor, constant: -10)
        ])
    }
}

#if DEBUG

import SwiftUI

struct ThirdViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ThirdViewController()
    }
}

struct ThirdViewControllerPresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ThirdViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif
