//
//  CodeScrollVC.swift
//  UIKit-ScrollView-Tutorial-test
//
//  Created by Jeff Jeong on 2023/07/02.
//

import Foundation
import UIKit
import SnapKit

let someDummyText = "아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다.아름답고 착목한는 긴지라 용감하고 있는 그들은 뿐이다. 생명을 그들의 얼마나 것은 살 눈에 곧 피고, 그들을 아름다우냐? 이것이야말로 되려니와, 원질이 피에 안고, 사막이다. 그와 바로 곧 불러 청춘의 이상의 청춘의 두손을 붙잡아 말이다. 어디 얼음이 청춘의 우리의 생생하며, 기관과 불어 그들은 영락과 있는가? 못하다 이것은 피어나기 피고 구하지 우리 우리의 있는가? 풀밭에 설산에서 이것을 힘차게 끝에 거선의 있음으로써 칼이다. 살 얼마나 있는 것이다. 찾아 충분히 인류의 때까지 보내는 방지하는 위하여서. 희망의 것은 피가 그들을 아니한 품에 귀는 구할 약동하다."

class CodeScrollVC : UIViewController{
    
    
    
    
    var someButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("버튼", for: .normal)
        return button
    }()
    
    var someLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = someDummyText
        return label
    }()
    
    lazy var someStackView : UIStackView = {
        
        let subViews = [someButton, someLabel]
        
        let stackView = UIStackView(arrangedSubviews: subViews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        stackView.axis = .vertical
        return stackView
    }()
    
    var someScrollView : UIScrollView = {
       let scrollView = UIScrollView()
        return scrollView
    }()
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .systemYellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "- ")
        
        self.view.addSubview(someScrollView)
        
        someScrollView.addSubview(someStackView)
        
        someStackView.snp.makeConstraints { make in
            make.edges.equalTo(someScrollView.contentLayoutGuide.snp.edges)
            make.width.equalTo(someScrollView.frameLayoutGuide.snp.width)
        }
        
        someScrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
        
        
        
        
    }
    
    
}



#if DEBUG

import SwiftUI

struct CodeScrollVCPresentable: UIViewControllerRepresentable {
    

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        return storyboard.instantiateViewController(withIdentifier: "CodeScrollVC")
    }
}


struct CodeScrollVCPrepresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        CodeScrollVCPresentable()
            .previewDevice("iPhone 12 mini")
            .previewDisplayName("iPhone 12 mini")
            .ignoresSafeArea()
    }
}

#endif
