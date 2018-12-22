//
//  UIButtonX2.swift
//  ExpandButtonAnimation
//
//  Created by Anantha Krishnan K G on 29/08/18.
//  Copyright © 2018 Ananth. All rights reserved.
//

import UIKit
import QuartzCore

/**
 Custom button for Sub items 
 */
@IBDesignable
class UIButtonX2: UIButton {


    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var isEnabledInitFromAnimation: Bool = true
    
    @IBInspectable public var shadowOpacity: Float = 0
        {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable public var shadowColor: UIColor = UIColor.clear
        {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable public var shadowRadius: CGFloat = 0
        {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    @IBInspectable public var shadowOffset: CGSize = CGSize(width: 0, height: 0)
        {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    

}
