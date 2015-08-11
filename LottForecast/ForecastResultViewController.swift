//
//  ForecastResultViewController.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/9.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit
import DrawerController

class ForecastResultViewController:  LottBaseViewController, ScrollPagerDelegate {

   
    
    @IBOutlet weak var scrollPager1: ScrollPager!
    

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLeftMenuButton()
        
        let viewWidth:CGFloat = CGRectGetWidth(self.view.frame)
//        var hms = HMSegmentedControl(frame: CGRectMake(0, 0, viewWidth, 120))

        let firstView = UILabel()
        firstView.backgroundColor = UIColor.whiteColor()
        firstView.text = "预测结果"
        firstView.textAlignment = .Center
        
        let secondView = UILabel()
        secondView.backgroundColor = UIColor.whiteColor()
        secondView.text = "预测依据"
        secondView.textAlignment = .Center
        
        let thirdView = UILabel()
        thirdView.backgroundColor = UIColor.whiteColor()
        thirdView.text = "相关图表"
        thirdView.textAlignment = .Center
        
        scrollPager1.delegate = self
        scrollPager1.addSegmentsWithTitlesAndViews([
            ("预测结果", firstView),
            ("预测依据", secondView),
            ("相关图表", thirdView),
            ("相关图表", thirdView)
            ])
        // Do any additional setup after loading the view.
    }

    func setupLeftMenuButton() {
        let leftDrawerButton = DrawerBarButtonItem(target: self, action: "leftDrawerButtonPress:")
        self.navigationItem.setLeftBarButtonItem(leftDrawerButton, animated: true)
        
    }
    
    func leftDrawerButtonPress(sender: AnyObject?) {
        self.evo_drawerController!.toggleDrawerSide(.Left, animated: true, completion: nil)
        
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
