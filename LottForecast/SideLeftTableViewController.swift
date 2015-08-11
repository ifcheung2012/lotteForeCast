//
//  SideLeftTableViewController.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/8.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit
import DrawerController

class SideLeftTableViewController: LottBaseViewController, UITableViewDataSource, UITableViewDelegate{
    
    var  cities = ["待办事项","已办事项","报表","设置"]
    
    var cellId = "ifcheung"
    
    var sideTabview:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var img = UIImage(named: "sunny")
//        var imgView = UIImageView(image: img)
//        
//        self.view.addSubview(imgView)
        
        
        self.sideTabview = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        self.sideTabview.bounces = false
        
        self.sideTabview.dataSource = self
        self.sideTabview.delegate = self
        self.view.addSubview(sideTabview)
        
        let backgroundColor = UIColor.darkGrayColor()
        
        self.sideTabview.separatorStyle = UITableViewCellSeparatorStyle.None
        self.sideTabview.backgroundColor = backgroundColor
        
    }


 

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return cities.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIdentifier = "Cell"
        
        var cell:UITableViewCell! = sideTabview.dequeueReusableCellWithIdentifier(CellIdentifier) as? UITableViewCell
        
        if cell == nil
        {
            cell = SideTableViewCell(style: .Default, reuseIdentifier: CellIdentifier)
            
        }
        cell.textLabel?.text = cities[indexPath.row]
        
        cell.accessoryType = .Checkmark
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.section {
        case DrawerRowSection.Insert.rawValue:
            println("insert action")
        case DrawerRowSection.Momo.rawValue:
            println("momo action")
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let centerContent = sb.instantiateViewControllerWithIdentifier("newcenterController") as! ForecastResultViewController
//
//            let centerViewController = ViewController()
            let vc = UINavigationController(rootViewController: centerContent)
            vc.restorationIdentifier = "CenterNavigationControllerRestorationKey"

            
            
            var parent = self.parentViewController?.parentViewController as! DrawerController
//            parent.centerViewController = vc
            
            parent.setCenterViewController(vc, withCloseAnimation: true, completion: nil)
            
            
            
        default:
            println("defalut click")
            
        }
    }
    

}

enum DrawerRowSection : Int{
    case Momo
    case Insert
}
