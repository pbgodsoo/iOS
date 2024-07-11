//
//  SecondViewController.swift
//  Uikit-codebase-tutorial-project
//
//  Created by 박범수 on 6/30/24.
//

import UIKit

class SecondViewController: UIViewController {

    let navigationBar = UINavigationBar()
    let checkboxView = UIView()
    let checkLabel = UILabel()
    let scrollView = UIScrollView()
    let encloseView = UIView()
    let messageLabel = UILabel()
    let assetView = UIImageView()
    let secondmessageLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupUIElements()
        setupConstraints()
    }
}

//MARK: - UI세팅
extension SecondViewController {
    /// UI 셋업
    func setupUIElements() {
        // 네비게이션 바 설정
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.barTintColor = .white
        view.addSubview(navigationBar)
        
        // 네비게이션 shadow 투명
        if let shadowImage = UIImage(named: "1x1empty") {
            navigationBar.shadowImage = shadowImage
        } else {
            print("Error: '1x1empty' 이미지 로드 실패")
        }
        
        //네비게이션 바 요소 추가
        let navigationItem = UINavigationItem(title: "자산추가")
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"))
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        navigationBar.setItems([navigationItem], animated: false)
        
        // 하단 확인 박스 설정
        checkboxView.backgroundColor = UIColor.systemBlue
        checkboxView.layer.cornerRadius = 10
        checkboxView.layer.masksToBounds = true
        checkboxView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(checkboxView)
        
        // 하단 박스 "확인"
        checkLabel.text = "확인"
        checkLabel.textColor = .white
        checkLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        checkLabel.textAlignment = .center
        checkLabel.translatesAutoresizingMaskIntoConstraints = false
        checkboxView.addSubview(checkLabel)
        
        // 스크롤뷰 설정
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // 스크롤뷰에 들어갈 뷰
        encloseView.backgroundColor = UIColor.white
        encloseView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(encloseView)
        
        // 메시지 설정
        messageLabel.text = "내 계좌, 카드를 한번에 모아\n모니모에서 관리해보세요"
        messageLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        messageLabel.numberOfLines = 2
        messageLabel.textAlignment = .center
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(messageLabel)
        
        // asset 이미지 설정
        if let assetImage = UIImage(named: "AssetImage") {
            assetView.image = assetImage
        } else {
            print("Error: 'AssetImage' 이미지 로드 실패")
        }
        assetView.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(assetView)
        
        // 메시지2 설정
        secondmessageLabel.text = "1분 만에,\n계좌와 카드를 찾아 드려요"
        secondmessageLabel.font = UIFont.systemFont(ofSize: 20)
        secondmessageLabel.textColor = .systemBlue
        secondmessageLabel.numberOfLines = 2
        secondmessageLabel.textAlignment = .center
        secondmessageLabel.translatesAutoresizingMaskIntoConstraints = false
        encloseView.addSubview(secondmessageLabel)
    }
    
    /// 위치, 크기 셋업
    func setupConstraints() {
        // 네비게이션 바 위치 크기 설정
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        // 하단 확인 박스 위치 크기 설정
        NSLayoutConstraint.activate([
            checkboxView.heightAnchor.constraint(equalToConstant: 60),
            checkboxView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkboxView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            checkboxView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -6)
        ])
        
        // 하단 박스 "확인" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            checkLabel.centerXAnchor.constraint(equalTo: checkboxView.centerXAnchor),
            checkLabel.centerYAnchor.constraint(equalTo: checkboxView.centerYAnchor),
            checkLabel.leadingAnchor.constraint(equalTo: checkboxView.leadingAnchor, constant: 0)
        ])
        
        // 스크롤뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: checkboxView.topAnchor, constant: -5)
        ])
        
        // 스크롤뷰에 들어갈 뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            encloseView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            encloseView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            encloseView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            encloseView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            encloseView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1)
        ])
        
        // 메시지 위치 크기 설정
        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            messageLabel.topAnchor.constraint(equalTo: encloseView.topAnchor, constant: 69),
            messageLabel.leadingAnchor.constraint(equalTo: encloseView.leadingAnchor, constant: 0),
            messageLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        // asset 이미지 위치 크기 설정
        NSLayoutConstraint.activate([
            assetView.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 96),
            assetView.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            assetView.widthAnchor.constraint(equalToConstant: 170),
            assetView.heightAnchor.constraint(equalToConstant: 170)
        ])
        
        // 메시지2 위치 크기 설정
        NSLayoutConstraint.activate([
            secondmessageLabel.centerXAnchor.constraint(equalTo: encloseView.centerXAnchor),
            secondmessageLabel.topAnchor.constraint(equalTo: assetView.bottomAnchor, constant: 116),
            secondmessageLabel.leadingAnchor.constraint(equalTo: encloseView.leadingAnchor, constant: 0),
            secondmessageLabel.heightAnchor.constraint(equalToConstant: 50),
            secondmessageLabel.bottomAnchor.constraint(equalTo: encloseView.bottomAnchor, constant: -30)
        ])
    }
}

#if DEBUG

import SwiftUI

struct SecondViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        SecondViewController()
    }
}

struct SecondViewControllerPresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        SecondViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif
