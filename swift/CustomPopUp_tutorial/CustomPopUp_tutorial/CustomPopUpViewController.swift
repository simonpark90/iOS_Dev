//
//  CustomPopUpViewController.swift
//  CustomPopUp_tutorial
//
//  Created by 박성우 on 2021/03/22.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var repositoryBtn: UIButton!
    
    // 이 변수가 호출이 됬을 때 아무것고 하지 않는다 하지만 호출이 되었다고만 알려준다
    var repositoryBtnCompletionClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        
        contentView.layer.cornerRadius = 30
        repositoryBtn.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onBgBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onRepositoryBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onRepositoryBtnClicked() called")
        // 이버튼이 눌린 것을 mainstoryboard가 알 수 있게 해주자 비동기로 처리해주자
        
        self.dismiss(animated: true, completion: nil)
        // 컴플레션 블럭 호출
        if let repositoryBtnCompletionClosure = repositoryBtnCompletionClosure{
            //메인에 알린다.
            repositoryBtnCompletionClosure()
        }
        
    }
}
