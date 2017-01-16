//
//  PageViewController.swift
//  ViewPageController
//
//  Created by WillowRivers on 2017/1/4.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {

    var imgName : String! ;
    var pageControl : UIPageControl = UIPageControl() ;
    var index : Int! ;
    override func viewDidLoad() {
        super.viewDidLoad() ;
        let imgV = UIImageView(frame: self.view.frame) ;
        imgV.image = UIImage(named: imgName) ;
        self.view.addSubview(imgV) ;
        pageControl.frame = CGRect(x: 0, y: view.frame.height - 100 , width: view.frame.width , height: 100) ;
        pageControl.numberOfPages = 3 ;
        pageControl.currentPage = index ;
        pageControl.currentPageIndicatorTintColor = UIColor.blue ;
        pageControl.pageIndicatorTintColor = UIColor.white ;
        
        self.view.addSubview(pageControl) ;
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    

}
