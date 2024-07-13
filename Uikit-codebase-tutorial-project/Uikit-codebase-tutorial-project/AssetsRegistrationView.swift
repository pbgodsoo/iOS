//
//  AssetsRegistrationView.swift
//  Uikit-codebase-tutorial-project
//
//  Created by 박범수 on 7/12/24.
//

import Foundation
import UIKit

class AssetsRegistrationView: UIView {
    // UILabel 생성
    let assetLabel = UILabel.makeLabel(
        text: "1개 자산",
        textColor: .systemBlue,
        font: .systemFont(ofSize: 20, weight: .medium), 
        textAlignment: .center
    )
    let completeLabel = UILabel.makeLabel(
        text: "등록 완료",
        font: .systemFont(ofSize: 30, weight: .semibold),
        textAlignment: .center
    )
    let announcementLabel = UILabel.makeLabel(
        text: "해당 금융사에서 자산 등록 완료 관련 안내 메시지를\n받게 될 수도 있어요.",
        textColor: .systemGray,
        font: .systemFont(ofSize: 17, weight: .light),
        textAlignment: .center,
        numberOfLines: 2
    )
    let okLabel = UILabel.makeLabel(
        text: "확인",
        textColor: .white,
        font: .systemFont(ofSize: 12, weight: .semibold)
    )
    let shinhanLabel = UILabel.makeLabel(
        text: "신한카드",
        font: .systemFont(ofSize: 15, weight: .medium)
    )
    let twoLabel = UILabel.makeLabel(
        text: "2개",
        textColor: .systemGray3,
        font: .systemFont(ofSize: 12)
    )
    let checkLabel = UILabel.makeLabel(
        text: "확인",
        textColor: .white,
        font: .systemFont(ofSize: 20, weight: .semibold),
        textAlignment: .center
    )
        
    // UIImageView 생성
    let checkView = UIImageView.makeImageView(imageName: "Check")
    let shinhanView = UIImageView.makeImageView(imageName: "shinhan")
    
    // UIView 생성
    let barView = UIView.makeView(backgroundColor: .systemGray6)
    let cardView = UIView.makeView(backgroundColor: .systemBackground)
    let okView = UIView.makeView(backgroundColor: .systemBlue, cornerRadius: 10)
    let checkboxView = UIView.makeView(backgroundColor: .systemBlue, cornerRadius: 10)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIElements()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    /// UI 요소들을 설정하는 메서드
    private func setupUIElements() {
        backgroundColor = .white
        [checkView, assetLabel, completeLabel, announcementLabel, barView, cardView, checkboxView].forEach { addSubview($0) }
        [shinhanView, okView, shinhanLabel, twoLabel].forEach { cardView.addSubview($0) }
        okView.addSubview(okLabel)
        checkboxView.addSubview(checkLabel)
    }

    /// 제약 조건을 설정하는 메서드
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // checkView 제약 조건
            checkView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            checkView.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkView.widthAnchor.constraint(equalToConstant: 80),
            checkView.heightAnchor.constraint(equalToConstant: 80),

            // assetLabel 제약 조건
            assetLabel.topAnchor.constraint(equalTo: checkView.bottomAnchor, constant: 20),
            assetLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            assetLabel.leadingAnchor.constraint(equalTo: leadingAnchor),

            // completeLabel 제약 조건
            completeLabel.topAnchor.constraint(equalTo: assetLabel.bottomAnchor, constant: 5),
            completeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            completeLabel.leadingAnchor.constraint(equalTo: leadingAnchor),

            // announcementLabel 제약 조건
            announcementLabel.topAnchor.constraint(equalTo: completeLabel.bottomAnchor, constant: 15),
            announcementLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            announcementLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            announcementLabel.heightAnchor.constraint(equalToConstant: 50),

            // barView 제약 조건
            barView.topAnchor.constraint(equalTo: announcementLabel.bottomAnchor, constant: 40),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            barView.heightAnchor.constraint(equalToConstant: 1),

            // cardView 제약 조건
            cardView.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 20),
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardView.heightAnchor.constraint(equalToConstant: 60),

            // shinhanView 제약 조건
            shinhanView.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            shinhanView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            shinhanView.widthAnchor.constraint(equalToConstant: 40),
            shinhanView.heightAnchor.constraint(equalToConstant: 50),

            // okView 제약 조건
            okView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            okView.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            okView.widthAnchor.constraint(equalToConstant: 35),
            okView.heightAnchor.constraint(equalToConstant: 25),

            // okLabel 제약 조건
            okLabel.centerXAnchor.constraint(equalTo: okView.centerXAnchor),
            okLabel.centerYAnchor.constraint(equalTo: okView.centerYAnchor),

            // shinhanLabel 제약 조건
            shinhanLabel.leadingAnchor.constraint(equalTo: shinhanView.trailingAnchor, constant: 20),
            shinhanLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
            shinhanLabel.trailingAnchor.constraint(equalTo: okView.leadingAnchor),

            // twoLabel 제약 조건
            twoLabel.leadingAnchor.constraint(equalTo: shinhanView.trailingAnchor, constant: 20),
            twoLabel.topAnchor.constraint(equalTo: shinhanLabel.bottomAnchor, constant: 6),
            twoLabel.trailingAnchor.constraint(equalTo: okView.leadingAnchor),

            // checkboxView 제약 조건
            checkboxView.heightAnchor.constraint(equalToConstant: 60),
            checkboxView.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkboxView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            checkboxView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -6),

            // checkLabel 제약 조건
            checkLabel.centerXAnchor.constraint(equalTo: checkboxView.centerXAnchor),
            checkLabel.centerYAnchor.constraint(equalTo: checkboxView.centerYAnchor),
            checkLabel.leadingAnchor.constraint(equalTo: checkView.leadingAnchor)
        ])
    }
}

// MARK: - UILabel
extension UILabel {
    /// UILabel 팩토리 메서드
    static func makeLabel(text: String, textColor: UIColor = .black, font: UIFont, textAlignment: NSTextAlignment = .left, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = font
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

// MARK: - UIImageView
extension UIImageView {
    /// UIImageView 팩토리 메서드
    static func makeImageView(imageName: String) -> UIImageView {
        let imageView = UIImageView()
        if let image = UIImage(named: imageName) {
            imageView.image = image
        } else {
            print("Error: '\(imageName)' 이미지 로드 실패")
        }
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}

// MARK: - UIView
extension UIView {
    /// UIView 팩토리 메서드
    static func makeView(backgroundColor: UIColor = .clear, cornerRadius: CGFloat = 0) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        if cornerRadius > 0 {
            view.layer.cornerRadius = cornerRadius
            view.layer.masksToBounds = true
        }
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
