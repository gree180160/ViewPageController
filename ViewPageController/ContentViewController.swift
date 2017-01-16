//
//  ContentViewController.swift
//  ViewPageController
//
//  Created by WillowRivers on 2017/1/16.
//  Copyright © 2017年 WillowRivers. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad() ;
        self.view.backgroundColor = UIColor.white ;
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 50)) ;
        label.text = "dlfjdojfoefjeojfope" ;
        view.addSubview(label) ;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
