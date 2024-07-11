//
//  AssetsRegistrationView.swift
//  Uikit-codebase-tutorial-project
//
//  Created by 박범수 on 7/8/24.
//

import Foundation
import UIKit

class AssetsRegistrationView: UIView {
    let checkView = UIImageView()
    let assetLabel = UILabel()
    let completeLabel = UILabel()
    let announcementLabel = UILabel()
    let barView = UIView()
    let cardView = UIView()
    let shinhanView = UIImageView()
    let okView = UIView()
    let okLabel = UILabel()
    let shinhanLabel = UILabel()
    let twoLabel = UILabel()
    let checkboxView = UIView()
    let checkLabel = UILabel()

    /// 초기화 메서드
    /// - Parameter frame: 뷰의 프레임을 지정하는 CGRect 값
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIElements()
        setupConstraints()
    }

    /// 스토리보드에서 생성 시 호출되는 초기화 메서드
    /// - Parameter coder: 뷰를 디코딩하는 데 사용되는 Unarchiving 객체
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    /// UI 요소들의 속성을 설정하는 메서드
    private func setupUIElements() {
        backgroundColor = .white

        // Check 이미지 설정
        if let checkImage = UIImage(named: "Check") {
            checkView.image = checkImage
        } else {
            print("Error: 'Check' 이미지 로드 실패")
        }
        checkView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(checkView)

        // "1개 자산" 라벨 설정
        assetLabel.text = "1개 자산"
        assetLabel.textColor = .systemBlue
        assetLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        assetLabel.textAlignment = .center
        assetLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(assetLabel)

        // "등록 완료" 라벨 설정
        completeLabel.text = "등록 완료"
        completeLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        completeLabel.textAlignment = .center
        completeLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(completeLabel)
        
        // 안내 메시지 라벨 설정
        announcementLabel.text = "해당 금융사에서 자산 등록 완료 관련 안내 메시지를\n받게 될 수도 있어요."
        announcementLabel.textColor = .systemGray
        announcementLabel.font = UIFont.systemFont(ofSize: 17, weight: .light)
        announcementLabel.numberOfLines = 2
        announcementLabel.textAlignment = .center
        announcementLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(announcementLabel)
        
        // 회색 bar 설정
        barView.backgroundColor = UIColor.systemGray6
        barView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(barView)
        
        // 카드 뷰 설정
        cardView.backgroundColor = UIColor.systemBackground
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(cardView)
        
        // 카드 이미지 설정
        if let shinhanImage = UIImage(named: "shinhan") {
            shinhanView.image = shinhanImage
        } else {
            print("Error: 'shinhan' 이미지 로드 실패")
        }
        shinhanView.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(shinhanView)
        
        // 확인 뷰 설정
        okView.backgroundColor = UIColor.systemBlue
        okView.layer.cornerRadius = 10
        okView.layer.masksToBounds = true
        okView.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(okView)
        
        // "확인" 라벨 설정
        okLabel.text = "확인"
        okLabel.textColor = .white
        okLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        okLabel.translatesAutoresizingMaskIntoConstraints = false
        okView.addSubview(okLabel)
        
        // "신한카드" 라벨 설정
        shinhanLabel.text = "신한카드"
        shinhanLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        shinhanLabel.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(shinhanLabel)
        
        // "2개" 라벨 설정
        twoLabel.text = "2개"
        twoLabel.textColor = .systemGray3
        twoLabel.font = UIFont.systemFont(ofSize: 12)
        twoLabel.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(twoLabel)
        
        // 하단 확인 박스 설정
        checkboxView.backgroundColor = UIColor.systemBlue
        checkboxView.layer.cornerRadius = 10
        checkboxView.layer.masksToBounds = true
        checkboxView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(checkboxView)
        
        // 하단 박스 "확인" 라벨 설정
        checkLabel.text = "확인"
        checkLabel.textColor = .white
        checkLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        checkLabel.textAlignment = .center
        checkLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(checkLabel)
    }

    /// UI 요소들의 제약조건을 설정하는 메서드
    private func setupConstraints() {
        // Check 이미지 위치 크기 설정
        NSLayoutConstraint.activate([
            checkView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            checkView.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkView.widthAnchor.constraint(equalToConstant: 80),
            checkView.heightAnchor.constraint(equalToConstant: 80)
        ])

        // "1개 자산" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            assetLabel.topAnchor.constraint(equalTo: checkView.bottomAnchor, constant: 20),
            assetLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            assetLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0)
        ])

        // "등록 완료" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            completeLabel.topAnchor.constraint(equalTo: assetLabel.bottomAnchor, constant: 5),
            completeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            completeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0)
        ])
            
        // 안내 메시지 위치 크기 설정
        NSLayoutConstraint.activate([
            announcementLabel.topAnchor.constraint(equalTo: completeLabel.bottomAnchor, constant: 15),
            announcementLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            announcementLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            announcementLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
            
        // 회색 bar 위치 크기 설정
        NSLayoutConstraint.activate([
            barView.topAnchor.constraint(equalTo: announcementLabel.bottomAnchor, constant: 40),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            barView.heightAnchor.constraint(equalToConstant: 1)
        ])
            
        // 카드 뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 20),
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardView.heightAnchor.constraint(equalToConstant: 60)
        ])
            
        // 카드 이미지 위치 크기 설정
        NSLayoutConstraint.activate([
            shinhanView.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            shinhanView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 0),
            shinhanView.widthAnchor.constraint(equalToConstant: 40),
            shinhanView.heightAnchor.constraint(equalToConstant: 50)
        ])
            
        // 확인 뷰 위치 크기 설정
        NSLayoutConstraint.activate([
            okView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: 0),
            okView.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            okView.widthAnchor.constraint(equalToConstant: 35),
            okView.heightAnchor.constraint(equalToConstant: 25)
        ])
            
        // "확인" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            okLabel.centerXAnchor.constraint(equalTo: okView.centerXAnchor),
            okLabel.centerYAnchor.constraint(equalTo: okView.centerYAnchor),
        ])
            
        // "신한카드" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            shinhanLabel.leadingAnchor.constraint(equalTo: shinhanView.trailingAnchor, constant: 20),
            shinhanLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
            shinhanLabel.trailingAnchor.constraint(equalTo: okView.leadingAnchor, constant: 0)
        ])
            
        // "2개" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            twoLabel.leadingAnchor.constraint(equalTo: shinhanView.trailingAnchor, constant: 20),
            twoLabel.topAnchor.constraint(equalTo: shinhanLabel.bottomAnchor, constant: 6),
            twoLabel.trailingAnchor.constraint(equalTo: okView.leadingAnchor, constant: 0)
        ])
        
        // 하단 확인 박스 위치 크기 설정
        NSLayoutConstraint.activate([
            checkboxView.heightAnchor.constraint(equalToConstant: 60),
            checkboxView.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkboxView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            checkboxView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -6)
        ])
            
        // 하단 박스 "확인" 라벨 위치 크기 설정
        NSLayoutConstraint.activate([
            checkLabel.centerXAnchor.constraint(equalTo: checkboxView.centerXAnchor),
            checkLabel.centerYAnchor.constraint(equalTo: checkboxView.centerYAnchor),
            checkLabel.leadingAnchor.constraint(equalTo: checkView.leadingAnchor, constant: 0)
        ])
    }
}

