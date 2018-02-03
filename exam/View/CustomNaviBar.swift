//
//  CustomNaviBar.swift
//  exam
//
//  Created by Chen ChiYun on 03/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

class CustomNaviBar: UIViewController{
    let navigationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 226/255, green: 240/255, blue: 218/255, alpha: 1)
        return view
    }()
    
    let navigationTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "List"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.black
        return label
    }()
    
    let navigationBackButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "left")?.withRenderingMode(.alwaysTemplate)
        btn.setImage(image, for: UIControlState.normal)
        btn.backgroundColor =  UIColor(red: 218/255, green: 227/255, blue: 242/255, alpha: 1)
        btn.tintColor = UIColor.black
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(red: 96/255, green: 96/255, blue: 96/255, alpha: 1).cgColor
        btn.addTarget(self, action: #selector(handlePop), for: .touchUpInside)
        return btn
    }()
    
    let navigationDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(navigationView)
        setupViews()
        view.backgroundColor = UIColor.white
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handlePop))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    @objc func handlePop() {
        self.dismiss(animated: true, completion: nil)
    }
}
