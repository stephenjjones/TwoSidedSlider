//
//  ViewController.swift
//  TwoSidedSlider
//
//  Created by Stephen Jones on 5/21/15.
//  Copyright (c) 2015 Bits N Grits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let rangeSlider = RangeSlider(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rangeSlider.backgroundColor = UIColor.redColor()
        view.addSubview(rangeSlider)
        
        rangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length, width: width, height: 31.0)
    }

    
    func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        println("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }
}

