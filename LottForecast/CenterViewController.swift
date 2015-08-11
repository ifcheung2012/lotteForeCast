//
//  CenterViewController.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/8.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit
import DrawerController


class CenterViewController: LottBaseViewController  {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
