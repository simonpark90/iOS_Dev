//
//  ViewController.swift
//  CustomPopUp_tutorial
//
//  Created by 박성우 on 2021/03/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var creatPopUpBnt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onCreatePopUpClicked(_ sender: UIButton) {
        print("ViewController - onCreatePopUpClicked() called")
        
        // 스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        //스토리보드를 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "AlertPopUpVC") as! CustomPopUpViewController
        // 뷰컨트롤러가 보여지는 스타일
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        // 뷰컨트롤러가 사라지는 스타일 (스르르 사라짐)
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.repositoryBtnCompletionClosure = {
            print("컴플레션 블럭이 호출 되었다.")
            let myGitUrl = URL(string: "https://github.com/simonpark90?tab=repositories")
            self.myWebView.load(URLRequest(url: myGitUrl!)) // ! : 값이 확실히 있다는 것을 의미. ? : 옵셔널-값이 있어도 없어도 된다.
        }
        // 다른뷰 컨트롤러를 보여줌 (스택과 다르게 현재있는 뷰컨트롤러 위에서 뷰컨트롤러 보여줌)
        self.present(customPopUpVC, animated: true, completion: nil)
    }
}

