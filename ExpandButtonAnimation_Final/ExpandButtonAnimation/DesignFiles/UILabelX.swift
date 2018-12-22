//
//  UILabelX.swift
//  ExpandButtonAnimation
//
//  Created by Anantha Krishnan K G on 29/08/18.
//  Copyright © 2018 Ananth. All rights reserved.
//

import UIKit

/**
 Sub item labels
 */
@IBDesignable
class UILabelX: UILabel {

    @IBInspectable var backgroundColorValue: UIColor = UIColor.lightGray {
        didSet {
            layer.backgroundColor = backgroundColorValue.cgColor
        }
    }
    
    @IBInspectable public var shadowOpacity: Float = 0
        {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }

    @IBInspectable public var shadowRadius: CGFloat = 0
        {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable public var shadowOffset1: CGSize = CGSize(width: 0, height: 0)
        {
        didSet {
            layer.shadowOffset = shadowOffset1
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    

}
