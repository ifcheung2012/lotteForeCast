//
//  SideTableViewCell.swift
//  LottForecast
//
//  Created by IfCheung on 15/8/8.
//  Copyright (c) 2015年 IfCheung. All rights reserved.
//

import UIKit

class SideTableViewCell: BaseTableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.commonSetup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonSetup()
    }
    
    func commonSetup() {
        let backgroundView = UIView(frame: self.bounds)
        backgroundView.autoresizingMask = .FlexibleHeight | .FlexibleWidth
        backgroundView.backgroundColor =  UIColor.darkGrayColor()
        
        self.backgroundView = backgroundView
        self.textLabel?.textAlignment = NSTextAlignment.Center
        self.textLabel?.backgroundColor = UIColor.clearColor()
        self.textLabel?.textColor = UIColor.lightTextColor()
        self.textLabel?.font = UIFont(name:"Arial", size: 13)
    
    }
    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}


