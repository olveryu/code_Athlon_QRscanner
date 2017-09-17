//
//  DesignButton.swift
//  teaP
//
//  Created by Xiaofeng wang on 6/12/17.
//  Copyright © 2017 kai. All rights reserved.
//

import UIKit

class DesignButton: UIButton {

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
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
}
