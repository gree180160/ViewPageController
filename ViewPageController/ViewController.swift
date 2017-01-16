//
//  ViewController.swift
//  ViewPageController
//
//  Created by WillowRivers on 2017/1/4.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPageViewControllerDelegate , UIPageViewControllerDataSource{
    
    var pageController : UIPageViewController! ;
    var viewCArr = NSMutableArray() ;
    
    override func viewDidLoad()
    {
        super.viewDidLoad() ;
        let imgNameArr = ["001.png","002.png","003.png"]
        pageController = UIPageViewController(transitionStyle: .scroll , navigationOrientation: .horizontal , options: nil) ;
        pageController.delegate = self ;
        pageController.dataSource = self ;
        for index in 0...2
        {
            
            let launchVC = LaunchVC() ;
            launchVC.imgName = imgNameArr[index] ;
            launchVC.index = index ;
            viewCArr.add(launchVC) ;
        }
        
        pageController.setViewControllers([viewCArr.object(at: 0) as! UIViewController] , direction: .reverse, animated: true , completion: nil) ;
        
        
        self.addChildViewController(pageController) ;
        self.view.addSubview(pageController.view) ;
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    //datasource
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {

        let index = self.viewCArr.index(of: viewController) ;
        if index <= 0
        {
            return nil ;
        }
        return viewCArr[index-1 ] as? UIViewController ;
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {

        let index = self.viewCArr.index(of: viewController) ;
        guard index < 2 else
        {
            return nil ;
        }
        return self.viewCArr[index+1] as? UIViewController ;
       
    }
    
    
     public func presentationCount(for pageViewController: UIPageViewController) -> Int // The number of items reflected in the page indicator.
    {
        return 0 ;
    }
    
    //delegate
   
    
    func pageViewController(_ pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation
    {
        return .min
    }
    
    private func pageViewControllerSupportedInterfaceOrientations(pageViewController: UIPageViewController) -> Int
    {
        return 1 ;
    }
    
    private func pageViewControllerPreferredInterfaceOrientationForPresentation(pageViewController: UIPageViewController) -> UIInterfaceOrientation
    {
        return .portrait
    }
    

}

