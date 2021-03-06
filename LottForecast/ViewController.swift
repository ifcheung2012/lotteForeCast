//
//  ViewController.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/8.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit
import DrawerController

class ViewController: LottBaseViewController {
    
   
   
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
   
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var img:UIImage = UIImage(named: "sunny")!
        var imgview = UIImageView(image: img)
        self.view.addSubview(imgview)
        self.view.backgroundColor = UIColor.grayColor()
        self.setupLeftMenuButton()
        
        //        let barColor = UIColor(red: 247/255, green: 249/255, blue: 250/255, alpha: 1.0)
        //        self.navigationController?.navigationBar.barTintColor = barColor
        //
        //        self.navigationController?.view.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupLeftMenuButton() {
        let leftDrawerButton = DrawerBarButtonItem(target: self, action: "leftDrawerButtonPress:")
        
        self.navigationItem.setLeftBarButtonItem(leftDrawerButton, animated: true)
        
    }
    
    func leftDrawerButtonPress(sender: AnyObject?) {
        self.evo_drawerController!.toggleDrawerSide(.Left, animated: true, completion: nil)
        
    }

    
}

