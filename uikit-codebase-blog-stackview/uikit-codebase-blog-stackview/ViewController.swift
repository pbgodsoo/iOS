//
//  ViewController.swift
//  uikit-codebase-blog-stackview
//
//  Created by 박범수 on 7/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //네비게이션 바 설정
        let navigationBar = UINavigationBar()
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
        let navigationItem = UINavigationItem(title: "송금")
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"))
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        navigationBar.setItems([navigationItem], animated: false)
        
        // 네비게이션 바 위치 크기 설정
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        // 하단 확인 박스 설정
        let sendboxView = UIView()
        sendboxView.backgroundColor = UIColor(red: 0.80, green: 0.90, blue: 1.00, alpha: 1.00)
        sendboxView.layer.cornerRadius = 10
        sendboxView.layer.masksToBounds = true
        sendboxView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sendboxView)
        
        // 하단 확인 박스 위치 크기 설정
        NSLayoutConstraint.activate([
            sendboxView.heightAnchor.constraint(equalToConstant: 60),
            sendboxView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sendboxView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            sendboxView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -6)
        ])
        
        // 하단 박스 "보내기"
        let sendLabel = UILabel()
        sendLabel.text = "보내기"
        sendLabel.textColor = .white
        sendLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        sendLabel.textAlignment = .center
        sendLabel.translatesAutoresizingMaskIntoConstraints = false
        sendboxView.addSubview(sendLabel)
        
        // 하단 박스 "보내기" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            sendLabel.centerXAnchor.constraint(equalTo: sendboxView.centerXAnchor),
            sendLabel.centerYAnchor.constraint(equalTo: sendboxView.centerYAnchor),
            sendLabel.leadingAnchor.constraint(equalTo: sendboxView.leadingAnchor, constant: 0)
        ])
        
        // 계좌 라벨
        let accountLabel = UILabel()
        accountLabel.text = "내 NH농협은행 계좌"
        accountLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        accountLabel.textAlignment = .center
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 계좌 라벨2
        let accountLabel2 = UILabel()
        accountLabel2.text = "로"
        accountLabel2.textColor = .systemGray3
        accountLabel2.font = UIFont.systemFont(ofSize: 20)
        accountLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        // 라벨 스택뷰
        let labelStack = UIStackView(arrangedSubviews: [accountLabel, accountLabel2])
        labelStack.axis = .horizontal
        labelStack.spacing = 5
        labelStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelStack)
        
        // 라벨 스택뷰 위치 크기
        NSLayoutConstraint.activate([
            labelStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelStack.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 52)
        ])
        
        // 금액 라벨
        let amountLabel = UILabel()
        amountLabel.text = "보낼 금액 입력"
        amountLabel.textColor = .systemGray3
        amountLabel.font = UIFont.systemFont(ofSize: 55)
        amountLabel.textAlignment = .center
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(amountLabel)
        
        NSLayoutConstraint.activate([
            amountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            amountLabel.topAnchor.constraint(equalTo: labelStack.bottomAnchor, constant: 15),
            amountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        ])


        // 숫자 라벨 생성
        let num1 = createNumberLabel(with: "1")
        let num2 = createNumberLabel(with: "2")
        let num3 = createNumberLabel(with: "3")
        let num4 = createNumberLabel(with: "4")
        let num5 = createNumberLabel(with: "5")
        let num6 = createNumberLabel(with: "6")
        let num7 = createNumberLabel(with: "7")
        let num8 = createNumberLabel(with: "8")
        let num9 = createNumberLabel(with: "9")
        let num0 = createNumberLabel(with: "0")
                
        // 숫자 스택뷰 생성
        let firstRowStack = UIStackView(arrangedSubviews: [num1, num2, num3])
        let secondRowStack = UIStackView(arrangedSubviews: [num4, num5, num6])
        let thirdRowStack = UIStackView(arrangedSubviews: [num7, num8, num9])
        let fourthRowStack = UIStackView(arrangedSubviews: [UIView(), num0, UIView()])
                
        firstRowStack.axis = .horizontal // 가로로 생성
        firstRowStack.distribution = .fillEqually // StackView의 축을 따라 모든 View가 같은 크기
        firstRowStack.spacing = 10 // View 간격
                
        secondRowStack.axis = .horizontal
        secondRowStack.distribution = .fillEqually
        secondRowStack.spacing = 10
                
        thirdRowStack.axis = .horizontal
        thirdRowStack.distribution = .fillEqually
        thirdRowStack.spacing = 10
                
        fourthRowStack.axis = .horizontal
        fourthRowStack.distribution = .fillEqually
        fourthRowStack.spacing = 10
                
        // 전체 숫자 스택뷰 생성
        let numberStack = UIStackView(arrangedSubviews: [firstRowStack, secondRowStack, thirdRowStack, fourthRowStack])
        numberStack.axis = .vertical
        numberStack.spacing = 35
        numberStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numberStack)
                
        // 숫자 스택뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            numberStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numberStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            numberStack.bottomAnchor.constraint(equalTo: sendboxView.topAnchor, constant: -30)

        ])
    }
            
    // 숫자 라벨 생성 함수
    func createNumberLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 35, weight: .regular)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
