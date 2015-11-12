//
//  CircularImageView.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/12/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

@IBDesignable class CircularImageView: UIImageView {
    
    lazy var borderLayer: CAShapeLayer = {
       let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = 2.0
        shapeLayer.strokeColor = self.tintColor.CGColor
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        self.layer.addSublayer(shapeLayer)
        return shapeLayer
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let path = UIBezierPath(ovalInRect: bounds)
        
        borderLayer.path = path.CGPath
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.CGPath
        layer.mask = shapeLayer
    }
    
    override func tintColorDidChange() {
        borderLayer.strokeColor = tintColor.CGColor
    }

}
