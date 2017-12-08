//
//  ViewController.swift
//  layerAnimation
//
//  Created by lichao_liu on 2017/12/7.
//  Copyright © 2017年 com.cn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer!
    var shapeLayer:CirclePieView!
    var circleView:PACircleProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()

       shapeLayer = CirclePieView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        shapeLayer.backgroundColor = UIColor.clear
        view.addSubview(shapeLayer)
        
        circleView = PACircleProgressView(frame: CGRect.init(x: 50, y: 200, width: 100, height: 100))
        view.addSubview(circleView)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(nextAction), userInfo: nil, repeats: true)
     }
 
    
    @objc func nextAction() {
        shapeLayer.progress += 0.1
        circleView.progressValue = CGFloat(shapeLayer.progress)
        if shapeLayer.progress >= 1{
            timer.invalidate()
            timer = nil
        }
    }

    
}

