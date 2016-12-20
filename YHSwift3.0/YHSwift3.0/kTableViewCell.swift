//
//  kTableViewCell.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/11/18.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit
import SnapKit
class kTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
     var titleString  = UILabel.init()
    var iconImage = UIImageView.init()
    var  detailsLabel = UILabel.init()
    var verticalLabel = UILabel.init()
    var timeLabel = UILabel.init()
    var modal = kModal()
    
    
    
     override   init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.titleString)
        self.contentView.addSubview(self.iconImage)
        self.contentView.addSubview(self.detailsLabel)
        self.contentView.addSubview(self.verticalLabel)
        self.contentView.addSubview(self.timeLabel)
       self.creatView()
    }
    
    func creatView(){
        self.titleString.text = "初始化"
        self.iconImage.backgroundColor = UIColor.magenta
        self.titleString.backgroundColor = UIColor.blue
        self.timeLabel.backgroundColor = UIColor.cyan
        self.detailsLabel.backgroundColor = UIColor.yellow
        self.verticalLabel.backgroundColor = UIColor.green
        self.iconImage.layer.cornerRadius = 10
        self.iconImage.layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.iconImage.snp.makeConstraints { (MT) in
            MT.left.equalToSuperview().offset(10)
            MT.top.equalToSuperview()
            MT.width.height.equalTo(20)
        }
        self.verticalLabel.snp.makeConstraints { (MT) in
            MT.centerX.equalTo(self.iconImage.snp.centerX)
            MT.width.equalTo(2)
            MT.top.equalTo(self.iconImage.snp.bottom)
            MT.bottom.equalToSuperview()
        }
        self.titleString.snp.makeConstraints { (MT) in
            MT.centerY.equalTo(self.iconImage.snp.centerY)
            MT.left.equalTo(self.iconImage.snp.right).offset(30)
            MT.right.equalToSuperview().offset(-30)
            MT.height.equalTo(20)
        }
        self.detailsLabel.snp.makeConstraints { (MT) in
            MT.top.equalTo(self.titleString.snp.bottom).offset(10)
            MT.left.equalTo(self.titleString.snp.left)
            MT.right.equalTo(self.titleString.snp.right)
            MT.height.equalTo(self.titleString.snp.height)
        }
        self.timeLabel.snp.makeConstraints { (MT) in
            MT.top.equalTo(self.detailsLabel.snp.bottom).offset(10)
            MT.left.equalTo(self.detailsLabel.snp.left)
            MT.right.equalTo(self.detailsLabel.snp.right)
            MT.height.equalTo(20)
        }
        
    }
    
    func cellHeight(modal:kModal) -> NSInteger {
        self.modal = modal
     self.detailsLabel.text  =  modal.describeStr as String
        return 100
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
