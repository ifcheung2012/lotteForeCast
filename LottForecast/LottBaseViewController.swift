//
//  LottBaseViewController.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/8.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit
import DrawerController

public extension UIViewController {
    var evo_drawerController: DrawerController? {
        var parentViewController = self.parentViewController
        
        while parentViewController != nil {
            if parentViewController!.isKindOfClass(DrawerController) {
                return parentViewController as? DrawerController
            }
            
            parentViewController = parentViewController!.parentViewController
        }
        
        return nil
    }
    
    var evo_visibleDrawerFrame: CGRect {
        if let drawerController = self.evo_drawerController {
            if drawerController.leftDrawerViewController != nil {
                if self == drawerController.leftDrawerViewController || self.navigationController == drawerController.leftDrawerViewController {
                    var rect = drawerController.view.bounds
                    rect.size.width = drawerController.maximumLeftDrawerWidth
                    return rect
                }
            }
            
            if drawerController.rightDrawerViewController != nil {
                if self == drawerController.rightDrawerViewController || self.navigationController == drawerController.rightDrawerViewController {
                    var rect = drawerController.view.bounds
                    rect.size.width = drawerController.maximumRightDrawerWidth
                    rect.origin.x = CGRectGetWidth(drawerController.view.bounds) - rect.size.width
                    return rect
                }
            }
        }
        
        return CGRectNull
    }
}



class LottBaseViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "contentSizeDidChangeNotification:", name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func contentSizeDidChangeNotification(notification: NSNotification) {
        if let userInfo: NSDictionary = notification.userInfo {
            self.contentSizeDidChange(userInfo[UIContentSizeCategoryNewValueKey] as! String)
        }
    }
    
    func contentSizeDidChange(size: String) {
        // Implement in subclass
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

