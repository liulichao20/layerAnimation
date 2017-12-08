//
//  CirclePieView.swift
//  layerAnimation
//
//  Created by lichao_liu on 2017/12/7.
//  Copyright © 2017年 com.cn.. All rights reserved.
//

import UIKit

class CirclePieView: UIView {

    var progress:CGFloat = 0{
        didSet{
            self.setNeedsDisplay()
        }
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        backgroundColor = UIColor.orange
        let origin = CGPoint(x: 50, y: 50)
        let radius = 50
        
        let startAngle = CGFloat(-0.5 * Double.pi)
        let endAngle = startAngle + CGFloat(self.progress * 2 * CGFloat(Double.pi))
        let sectorPath:UIBezierPath = UIBezierPath(arcCenter: origin, radius: CGFloat(radius), startAngle: startAngle, endAngle: endAngle, clockwise: true)
        sectorPath.addLine(to: origin)
        UIColor.darkGray.set()
        sectorPath.fill()
    }

}
