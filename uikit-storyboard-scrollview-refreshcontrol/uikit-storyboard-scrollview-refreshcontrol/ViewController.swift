//
//  ViewController.swift
//  uikit-storyboard-scrollview-refreshcontrol
//
//  Created by 박범수 on 7/13/24.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var loadingView: LottieAnimationView!
    
    @IBOutlet var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadingView.animation = LottieAnimation.named("loading_animation")
        loadingView.contentMode = .scaleAspectFit
        loadingView.loopMode = .loop
        loadingView.play()
        configureRefreshControl()
    }
    

}

// MARK: - 리프레시 관련
extension ViewController {
    
    func configureRefreshControl () {
       // Add the refresh control to your UIScrollView object.
        
        let myRefreshControl = UIRefreshControl()
        
        myRefreshControl.addTarget(self, action:
                                    #selector(handleRefreshControl),
                                    for: .valueChanged)
        
       myScrollView.refreshControl = myRefreshControl
    }
        
    @objc func handleRefreshControl() {
        print(#file, #function, #line, "- ")
       // Update your content…
       // Dismiss the refresh control.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.myScrollView.refreshControl?.endRefreshing()
        })
//       DispatchQueue.main.async {
//          self.myScrollView.refreshControl?.endRefreshing()
//       }
    }
}
