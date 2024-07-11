//
//  ViewController.swift
//  Uikit-codebase-stackview-snapkit2
//
//  Created by 박범수 on 6/28/24.
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
        

        
        topStackView.snp.makeConstraints {
            // 크기
            // 위치 : x, y
            $0.top.equalToSuperview().offset(100)
            $0.horizontalEdges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
        }
        print(#function)
        
        let secondStackView = generateJellyStackViw()
        
        self.view.addSubview(secondStackView)
    
        // secondStackView 위치 잡기
        // snapkit 사용
        secondStackView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(self.topStackView.snp.horizontalEdges)
            make.top.equalTo(self.topStackView.snp.bottom).offset(20)
        }
        // snapkit 사용 X
//        NSLayoutConstraint.activate([
//            secondStackView.leadingAnchor.constraint(equalTo: topStackView.leadingAnchor),
//            secondStackView.trailingAnchor.constraint(equalTo: topStackView.trailingAnchor),
//            secondStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 20)
//        ])
        
        let thirdStackView = generateKakaoStackViw()
        
        self.view.addSubview(thirdStackView)
        // thirdStackView 위치 잡기
        //snapkit 사용
        thirdStackView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(secondStackView.snp.horizontalEdges)
            make.top.equalTo(secondStackView.snp.bottom).offset(20)
        }
        // snapkit 사용 X
//        NSLayoutConstraint.activate([
//            thirdStackView.leadingAnchor.constraint(equalTo: secondStackView.leadingAnchor),
//            thirdStackView.trailingAnchor.constraint(equalTo: secondStackView.trailingAnchor),
//            thirdStackView.topAnchor.constraint(equalTo: secondStackView.bottomAnchor, constant: 20)
//        ])
        
        let fourthStackView : UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [
                generateKakaoStackViw(),
                generateKakaoStackViw(),
                generateKakaoStackViw(),
                generateKakaoStackViw()
            ])
            stackView.spacing = 10
            stackView.alignment = .center
            stackView.axis = .vertical
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.backgroundColor = UIColor.lightGray
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.layer.borderColor = UIColor.systemBlue.cgColor
            stackView.layer.borderWidth = 2
            stackView.layer.cornerRadius = 10
            return stackView
        }()
        
        self.view.addSubview(fourthStackView)
        // 위치 잡기
        // snapkit 사용
        fourthStackView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(thirdStackView.snp.horizontalEdges)
            make.top.equalTo(thirdStackView.snp.bottom).offset(20)
        }
        // snapkit 사용 X
//        NSLayoutConstraint.activate([
//            fourthStackView.leadingAnchor.constraint(equalTo: thirdStackView.leadingAnchor),
//            fourthStackView.trailingAnchor.constraint(equalTo: thirdStackView.trailingAnchor),
//            fourthStackView.topAnchor.constraint(equalTo: thirdStackView.bottomAnchor, constant: 20)
//        ])
    }

}

// MARK: - view 관련
extension ViewController {
    
    /// 카카오 스택뷰 생성
    /// - Returns: 생성된 스택뷰
    fileprivate func generateKakaoStackViw() -> UIStackView {
        // 첫번째 라벨
        let firstLabel = UILabel()
        firstLabel.text = "내 카카오 뱅크 입출금 통장"
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        // 두번째 라벨
        let secondLabel = UILabel()
        secondLabel.text = "젤리 교환소"
        secondLabel.font = UIFont.systemFont(ofSize: 12)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 오른쪽 이미지
        let trailingImgView = UIImageView()
        trailingImgView.image = UIImage(systemName: "eraser.line.dashed.fill")
        trailingImgView.translatesAutoresizingMaskIntoConstraints = false
        
        // snapkit 사용
        trailingImgView.snp.makeConstraints { make in
            make.size.equalTo(20)
//            make.width.height.equalTo(20)
        }
        // snapkit 사용 X
//        NSLayoutConstraint.activate([
//            trailingImgView.widthAnchor.constraint(equalToConstant: 20),
//            trailingImgView.heightAnchor.constraint(equalToConstant: 20)
//        ])
        
        let secondStackView : UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [
                firstLabel,
                secondLabel,
                trailingImgView
            ])
            stackView.spacing = 10
            stackView.alignment = .center
            stackView.axis = .horizontal
            stackView.distribution = .equalCentering
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.backgroundColor = UIColor.systemYellow
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.layer.borderColor = UIColor.systemBlue.cgColor
            stackView.layer.borderWidth = 2
            stackView.layer.cornerRadius = 10
            return stackView
        }()
        return secondStackView
    }
    /// 젤리 스택뷰 생성
    /// - Returns: 생성된 스택뷰
    fileprivate func generateJellyStackViw() -> UIStackView {
        // 왼쪽 이미지
        let leadingImgView = UIImageView()
        leadingImgView.image = UIImage(systemName: "eraser.line.dashed.fill")
        leadingImgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingImgView.widthAnchor.constraint(equalToConstant: 50),
            leadingImgView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // 중간 라벨
        let centerLabel = UILabel()
        centerLabel.text = "젤리 교환소"
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 오른쪽 이미지
        let trailingImgView = UIImageView()
        trailingImgView.image = UIImage(systemName: "eraser.line.dashed.fill")
        trailingImgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            trailingImgView.widthAnchor.constraint(equalToConstant: 50),
            trailingImgView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let secondStackView : UIStackView = {
            let stackView = UIStackView(arrangedSubviews: [
                leadingImgView,
                centerLabel,
                trailingImgView
            ])
            stackView.spacing = 0
            stackView.alignment = .center
            stackView.axis = .horizontal
            stackView.distribution = .equalCentering
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.backgroundColor = UIColor.systemYellow
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.layer.borderColor = UIColor.systemBlue.cgColor
            stackView.layer.borderWidth = 2
            stackView.layer.cornerRadius = 10
            return stackView
        }()
        return secondStackView
    }
    
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
