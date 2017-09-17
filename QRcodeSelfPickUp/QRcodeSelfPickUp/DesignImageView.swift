//
//  DesignImageView.swift
//  teaP
//
//  Created by Xiaofeng wang on 7/3/17.
//  Copyright © 2017 kai. All rights reserved.
//

import UIKit

class DesignImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
