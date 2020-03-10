//
//  UIViewExt.swift
//  IOSPractice
//
//  Created by ENFINY INNOVATIONS on 3/5/20.
//  Copyright © 2020 ENFINY INNOVATIONS. All rights reserved.
//

import UIKit


extension UIView {
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview!.topAnchor),
            leadingAnchor.constraint(equalTo: superview!.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview!.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview!.bottomAnchor)
        ])
        
    }
    
}
