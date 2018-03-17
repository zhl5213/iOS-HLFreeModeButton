//
//  HLFreeModeButtonViewController.swift
//  HLTestAndVertify
//
//  Created by jsbios on 2018/3/15.
//  Copyright © 2018年 Dianzhi. All rights reserved.
//

import UIKit

class HLFreeModeButtonViewController: UIViewController {
    @IBOutlet weak var testButton0: UIButton!
    
    @IBOutlet weak var testButton: HLFreeModeButton!
    
    @IBOutlet weak var testButton2: HLFreeModeButton!
    
    @IBOutlet weak var testButton3: HLFreeModeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton0.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: UIControlEvents.touchUpInside)
        testButton0.setTitle("总是image在左", for: UIControlState.selected)

        testButton.setContentMode(HLButtonContentMode.imageRight, for: UIControlState.selected)
        testButton.setTitle("imagerightTitleLeft", for: UIControlState.selected)
        testButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: UIControlEvents.touchUpInside)
        
        testButton2.setContentMargin(10, for: UIControlState.normal)
        testButton2.setContentMode(HLButtonContentMode.imageBottom, for: UIControlState.normal)
        testButton2.setTitle("imageBottomTitleTop", for: UIControlState.normal)
        testButton2.setContentMode(HLButtonContentMode.imageTop, for: UIControlState.selected)
        testButton2.setTitle("imageTopTitleBottom", for: UIControlState.selected)
        testButton2.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: UIControlEvents.touchUpInside)
        
        testButton3.setTitle("^间距10^", for: UIControlState.normal)
        testButton3.setTitle("<-间距20", for: UIControlState.selected)
        testButton3.setContentMargin(10, for: UIControlState.normal)
        testButton3.setContentMargin(20, for: UIControlState.selected)
        testButton3.setContentMode(HLButtonContentMode.imageTop, for: UIControlState.normal)
        testButton3.setContentMode(HLButtonContentMode.imageLeft, for: UIControlState.selected)
        testButton3.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: UIControlEvents.touchUpInside)
        
        
        let testButton4 = HLFreeModeButton.init(frame: CGRect.init(x: 0, y: testButton3.frame.maxY + 10, width: 150, height: 150 ))
        testButton4.set(image: UIImage.init(named: "xiaopingguo")!, title: "我的头像", titleColr: UIColor.black,contentMargin: 10, HLButtonContentMode.imageTop, for: UIControlState.normal)
        
        view.addSubview(testButton4)
        
    }
    
    @objc func buttonIsTapped(sender:UIButton) {
        sender.isSelected = !sender.isSelected
    }

}
