//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 박성우 on 2021/03/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var bntForLoginViewController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerClicked(_ sender: UIButton) {
        
        print("RegisterViewController - onLoginViewControllerClicked() called / 로그인 버튼 클릭")
        
        // 네비게이션 뷰 컨트롤러 pop
        self.navigationController?.popViewController(animated: true)
    
    }
    
}
