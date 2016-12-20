//
//  homeTableViewHeaderFooterView.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/11/22.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit

class homeTableViewHeaderFooterView: UITableViewHeaderFooterView {

    var homeImageView = UIImageView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.creatHomeHeaderView()
    }
    
    func creatHomeHeaderView() -> Void {
        self.homeImageView = UIImageView.init()
        self.contentView.addSubview(self.homeImageView)
        self.homeImageView.backgroundColor = UIColor.yellow
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.homeImageView.snp.makeConstraints { (MT) in
            MT.top.equalToSuperview()
            MT.left.right.equalToSuperview()
            MT.bottom.equalToSuperview()
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
