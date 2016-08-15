//
//  SnowView.swift
//  GYWeatherEffect
//
//  Created by Gerry on 8/14/16.
//  Copyright © 2016 gaoyve. All rights reserved.
//

import UIKit
import QuartzCore

class GYSnowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let snowEmitter =  CAEmitterLayer()
        snowEmitter.emitterPosition = CGPoint(x: bounds.size.width/2, y: 0)
        snowEmitter.emitterSize = bounds.size
        snowEmitter.emitterShape = kCAEmitterLayerRectangle
        
        let snowEmitterCell = CAEmitterCell()
        snowEmitterCell.contents = UIImage(named: "flake.png")!.cgImage
        snowEmitterCell.birthRate = 200
        snowEmitterCell.lifetime = 3.5
        snowEmitterCell.color = UIColor.white.cgColor
        snowEmitterCell.redRange = 0.0
        snowEmitterCell.blueRange = 0.1
        snowEmitterCell.greenRange = 0.0
        snowEmitterCell.velocity = 10
        snowEmitterCell.velocityRange = 350
        snowEmitterCell.emissionRange = CGFloat(M_PI_2)
        snowEmitterCell.emissionLongitude = CGFloat(-M_PI)
        snowEmitterCell.yAcceleration = 70
        snowEmitterCell.xAcceleration = 0
        snowEmitterCell.scale = 0.33
        snowEmitterCell.scaleRange = 1.25
        snowEmitterCell.scaleSpeed = -0.25
        snowEmitterCell.alphaRange = 0.5
        snowEmitterCell.alphaSpeed = -0.15
        
        snowEmitter.emitterCells = [snowEmitterCell]
        
        snowEmitterCell.contents = UIImage(named: "flake.png")!.cgImage
        
        
        snowEmitter.emitterCells = [snowEmitterCell]
        layer.addSublayer(snowEmitter)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
