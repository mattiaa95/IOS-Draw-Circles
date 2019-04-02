//
//  TriangleView.swift
//  eeee
//
//  Created by Mattia La Spina on 02/04/2019.
//  Copyright © 2019 Mattia La Spina. All rights reserved.
//

import UIKit

@IBDesignable
class TriangleView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        for i in 0...4 {
            let layer = CAShapeLayer()
            layer.path = UIBezierPath(ovalIn: CGRect(x: i*60, y: 0, width: 50, height: 50)).cgPath
            layer.fillColor = UIColor.black.cgColor
            self.layer.addSublayer(layer)
        }
    }
}
