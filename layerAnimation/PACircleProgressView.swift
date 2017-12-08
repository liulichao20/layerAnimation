//
//  PACircleProgressView.swift
//  wanjia2B
//
//  Created by lichao_liu on 2017/11/24.
//  Copyright © 2017年 com.cn.. All rights reserved.
//

import UIKit

class PACircleProgressView: UIView {
    var progressValue:CGFloat = 0{
        didSet{
            frontFillLayer.strokeEnd = progressValue
        }
    }
    var progressStrokeWidth:Float = 0
    var progressStrokeColor:UIColor = UIColor.orange
    var frontFillLayer:CAShapeLayer = CAShapeLayer()
    var frontFillBezierPath:UIBezierPath!
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        frontFillLayer.fillColor = UIColor.clear.cgColor
        frontFillLayer.strokeColor = progressStrokeColor.cgColor
        frontFillLayer.frame = bounds
        frontFillLayer.lineWidth = 2
        
        frontFillBezierPath = UIBezierPath(arcCenter: CGPoint.init(x: frame.size.width/2.0, y: frame.size.height/2.0), radius: (frame.size.width - 2)/2, startAngle: CGFloat(-0.5 * Double.pi), endAngle: CGFloat(1.5 * Double.pi), clockwise: true)
        frontFillLayer.strokeEnd = 0
        frontFillLayer.path = frontFillBezierPath.cgPath
        layer.addSublayer(frontFillLayer)
     }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
