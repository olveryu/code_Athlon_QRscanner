//
//  DesignView.swift
//  teaP
//
//  Created by Xiaofeng wang on 7/3/17.
//  Copyright © 2017 kai. All rights reserved.
//

import UIKit

class DesignView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        
        didSet{
            self.layer.borderWidth = borderWidth
        }
        
    }
    
    @IBInspectable var BorderColor : UIColor = UIColor.clear{
        
        didSet{
            self.layer.borderColor = BorderColor.cgColor
        }
        
    }

}
