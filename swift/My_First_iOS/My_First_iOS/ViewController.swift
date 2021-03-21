//
//  ViewController.swift
//  My_First_iOS
//
//  Created by 박성우 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController {
    // 제목
    var titleLable: UILabel = {
        
        let label = UILabel()
        label.text = "Hello World!!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        //view(전체그림)에 작은 그림(titleLabel)을 추가한다(addSubview)
        view.addSubview(titleLable)
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

