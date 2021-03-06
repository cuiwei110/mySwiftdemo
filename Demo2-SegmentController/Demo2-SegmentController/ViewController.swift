//
//  ViewController.swift
//  SSSegmentedViewExample
//
//  Created by xiaobei on 2017/8/23.
//  Copyright © 2017年 xiaobei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let count = 7
        let frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: view.bounds.height)
        var contentViews = [UIView]()
        var titles = [String]()
        // 循环初始化
        for i in 0..<count {
            let vc = testViewController()
            addChildViewController(vc)
            contentViews.append(vc.view)
            
            titles.append("标题\(i)")
        }
        // segmentView
        let segmentView = SSSegmentedView(frame: frame, titles: titles, contentViews: contentViews)
        segmentView.sliderStyle = .center
        segmentView.topHeight = CGFloat(80)
        segmentView.isShowBottomLine = false
        segmentView.viewIndex = { index in
            print("----滚动位置\(index)")
        }
        
        view.addSubview(segmentView)
    }

}

