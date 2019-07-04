//
//  UIView.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        set {
            addCorner(with: newValue)
        } get {
            return self.cornerRadius
        }
    }
}

extension UIView {
    fileprivate func addCorner(with corner: CGFloat) {
        layer.cornerRadius = corner
        layer.masksToBounds = true
    }
}
