//
//  ViewExtensions.swift
//  exam
//
//  Created by Chen ChiYun on 03/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import UIKit

extension ListPage {
    
    func setupNavigationViews() {
        navigationView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navigationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navigationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        navigationView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        navigationView.addSubview(navigationTitle)
        navigationTitle.centerXAnchor.constraint(equalTo: navigationView.centerXAnchor).isActive = true
        navigationTitle.centerYAnchor.constraint(equalTo: navigationView.centerYAnchor).isActive = true
        navigationView.addSubview(navigationBackButton)
        navigationBackButton.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 5).isActive = true
        navigationBackButton.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: -5).isActive = true
        navigationBackButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        navigationBackButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        navigationView.addSubview(navigationDivider)
        navigationDivider.leftAnchor.constraint(equalTo: navigationView.leftAnchor).isActive = true
        navigationDivider.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor).isActive = true
        navigationDivider.widthAnchor.constraint(equalTo: navigationView.widthAnchor, constant: 1).isActive = true
        navigationDivider.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setupNameTagViews() {
        nameTagBar.topAnchor.constraint(equalTo: navigationView.bottomAnchor).isActive = true
        nameTagBar.leftAnchor.constraint(equalTo: (collectionView?.leftAnchor)!).isActive = true
        nameTagBar.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        nameTagBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        nameTagBar.addSubview(labelFirstTag)
        labelFirstTag.leftAnchor.constraint(equalTo: nameTagBar.leftAnchor, constant: 20).isActive = true
        labelFirstTag.bottomAnchor.constraint(equalTo: nameTagBar.bottomAnchor).isActive = true
        labelFirstTag.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        nameTagBar.addSubview(labelLastTag)
        labelLastTag.leftAnchor.constraint(equalTo: labelFirstTag.rightAnchor,constant: 20).isActive = true
        labelLastTag.bottomAnchor.constraint(equalTo: nameTagBar.bottomAnchor).isActive = true
        labelLastTag.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        nameTagBar.addSubview(nameTagDivider)
        nameTagDivider.leftAnchor.constraint(equalTo: nameTagBar.leftAnchor).isActive = true
        nameTagDivider.bottomAnchor.constraint(equalTo: nameTagBar.bottomAnchor).isActive = true
        nameTagDivider.widthAnchor.constraint(equalTo: nameTagBar.widthAnchor, constant: 1).isActive = true
        nameTagDivider.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
}

extension DetailPage {
    
    func setupViews() {
        navigationView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navigationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navigationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        navigationView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        navigationView.addSubview(navigationTitle)
        navigationTitle.centerXAnchor.constraint(equalTo: navigationView.centerXAnchor).isActive = true
        navigationTitle.centerYAnchor.constraint(equalTo: navigationView.centerYAnchor).isActive = true
        navigationView.addSubview(navigationBackButton)
        navigationBackButton.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 5).isActive = true
        navigationBackButton.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: -5).isActive = true
        navigationBackButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        navigationBackButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        navigationView.addSubview(navigationDivider)
        navigationDivider.leftAnchor.constraint(equalTo: navigationView.leftAnchor).isActive = true
        navigationDivider.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor).isActive = true
        navigationDivider.widthAnchor.constraint(equalTo: navigationView.widthAnchor, constant: 1).isActive = true
        navigationDivider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        labelfirstname.topAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: 10).isActive = true
        labelfirstname.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelfirstname.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelfirstname.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        labelLastname.topAnchor.constraint(equalTo: labelfirstname.bottomAnchor, constant: 10).isActive = true
        labelLastname.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelLastname.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelLastname.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelAge.topAnchor.constraint(equalTo: labelLastname.bottomAnchor, constant: 10).isActive = true
        labelAge.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelAge.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelAge.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelBirthday.topAnchor.constraint(equalTo: labelAge.bottomAnchor, constant: 10).isActive = true
        labelBirthday.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelBirthday.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelBirthday.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        
        labelEmail.topAnchor.constraint(equalTo: labelBirthday.bottomAnchor, constant: 10).isActive = true
        labelEmail.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelEmail.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelMobile.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 10).isActive = true
        labelMobile.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelMobile.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelMobile.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelAddress.topAnchor.constraint(equalTo: labelMobile.bottomAnchor, constant: 10).isActive = true
        labelAddress.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelAddress.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelAddress.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelContactperson.topAnchor.constraint(equalTo: labelAddress.bottomAnchor, constant: 10).isActive = true
        labelContactperson.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelContactperson.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelContactperson.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
        labelContactpersonphone.topAnchor.constraint(equalTo: labelContactperson.bottomAnchor, constant: 10).isActive = true
        labelContactpersonphone.rightAnchor.constraint(equalTo: navigationView.rightAnchor, constant: 0).isActive = true
        labelContactpersonphone.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelContactpersonphone.leftAnchor.constraint(equalTo: navigationView.leftAnchor, constant: 10).isActive = true
        
    }
}

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCellViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupCellViews() {
        backgroundColor = UIColor.blue
    }
}

