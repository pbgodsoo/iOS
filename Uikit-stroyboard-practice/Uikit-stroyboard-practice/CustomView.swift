//
//  CustomView.swift
//  Uikit-stroyboard-practice
//
//  Created by 박범수 on 7/2/24.
//

import Foundation
import UIKit

// @IBDesignable 인터페이스 빌더에서 디자인으로 확인 가능하게끔
@IBDesignable
class CustomView : UIView {
    
    // @IBInspectable 인스펙터 패널에서 사용될 수 있도록 설정
    @IBInspectable
    var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var isCircle : Bool = false {
        didSet{
            if isSquare && isCircle {
                self.layer.cornerRadius = self.frame.width / 2
            }
        }
    }
    
    
    fileprivate var isSquare : Bool {
        get {
            return self.frame.width == self.frame.height
        }
    }
}
