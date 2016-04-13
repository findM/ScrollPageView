//
//  Vc5Controller.swift
//  ScrollViewController
//
//  Created by jasnig on 16/4/8.
//  Copyright © 2016年 ZeroJ. All rights reserved.
//

import UIKit

class Vc5Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titles = ["国内头条", "国际要闻", "趣事", "囧图"]
        
        addChildVcs()
        
        // 这个是必要的设置
        automaticallyAdjustsScrollViewInsets = false
        
        var style = SegmentStyle()
        // 标题不滚动, 则每个label会平分宽度
        style.scrollTitle = false
        // 遮盖
        style.showCover = true
        // 颜色渐变
        style.gradualChangeTitleColor = true
        // 遮盖颜色
        style.coverBackgroundColor = UIColor.lightGrayColor()
        
        
        let scroll = ScrollPageView(frame: CGRect(x: 0, y: 64, width: view.bounds.size.width, height: view.bounds.size.height - 64), segmentStyle: style, titles: titles, childVcs: childViewControllers)
        view.addSubview(scroll)
    }
    
    func addChildVcs() {
        let vc1 = storyboard!.instantiateViewControllerWithIdentifier("test")
        addChildViewController(vc1)
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.greenColor()
        addChildViewController(vc2)
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = UIColor.redColor()
        addChildViewController(vc3)
        
        let vc4 = UIViewController()
        vc4.view.backgroundColor = UIColor.yellowColor()
        addChildViewController(vc4)

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
