//
//  ViewController.swift
//  NiceApp
//
//  Created by 박성우 on 2021/03/21.
//

import UIKit
import Lottie


class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면 "
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
        
    }()
    
    let animationView: AnimationView = {
        
        let animView = AnimationView(name: "52304-women-day-flower-delivery")
        animView.frame = CGRect(x:0, y:0,width: 400, height: 400 )
        animView.contentMode = .scaleAspectFill
        return animView
    }()
    
    //뷰가 생성 되었을 때 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        //에니메이션 실행
        animationView.play{ [self] (finish) in
            //
            print("에니메션이 종료")
            
            self.view.backgroundColor = .white
            
            //애니메이션을 지우고 글자를 띄우기 위해 애니메이션을 슈퍼뷰(가장 최상단의 뷰)에서 삭제
            self.animationView.removeFromSuperview()

            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
    }


}

