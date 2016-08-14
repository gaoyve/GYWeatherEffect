//
//  ViewController.swift
//  GYWeatherEffect
//
//  Created by Gerry on 8/14/16.
//  Copyright © 2016 gaoyve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var backgroundImageView: UIImageView!

    var snowView: GYSnowView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        snowView = GYSnowView(frame: CGRect(x: -150, y:-100, width: 300, height: 50))
        let snowClipView = UIView(frame: view.frame.offsetBy(dx: 0, dy: 50))
        snowClipView.clipsToBounds = true
        snowClipView.addSubview(snowView)
        view.addSubview(snowClipView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

