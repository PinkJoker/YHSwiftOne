//
//  SecondViewController.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/11/19.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var button = UIButton()
    var bottomView = UIView()
    var isChange = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view.
        self.view.addSubview(self.button)
        self.view.addSubview(self.bottomView)
//        self.bottomView.frame = cgrectma
        self.button.backgroundColor = UIColor.orange
        self.button.setTitle("确定", for: UIControlState.normal)
        self.button.titleLabel?.textColor = UIColor.white
        self.button.tintColor = UIColor.cyan
        self.isChange = true
        self.button.snp.makeConstraints { (MT) in
            MT.centerX.equalToSuperview()
            MT.centerY.equalToSuperview()
            MT.height.equalTo(44)
            MT.width.equalTo(100)
        }
        self.bottomView.snp.makeConstraints { (MT) in
            MT.top.equalTo(self.view.snp.bottom)
            MT.left.right.equalToSuperview()
            MT.height.equalTo(120)
        }
        self.bottomView.backgroundColor = UIColor.green
        //self.button.addTarget(self, action: Selector(touchButton), for: UIControlEvents.touchDown)
        self.button.addTarget(self, action:#selector(touchButton(button:)), for: UIControlEvents.touchDown)
        
    }
    func touchButton(button:UIButton) {
        
        let homeVC = HomeViewController()
        self.navigationController?.pushViewController(homeVC, animated: true)
        
//        
//        self.isChange = !self.isChange
//        if self.isChange == true {
//            self.bottomView.snp.updateConstraints { (MT) in
//                MT.top.equalTo(self.view.snp.bottom)
//                MT.left.right.equalToSuperview()
//                MT.height.equalTo(120)
//            }
//        }else{
//            UIView.animate(withDuration: 0.5) {
//                self.bottomView.snp.updateConstraints({ (MT) in
//                    MT.top.equalTo(self.view.snp.bottom).offset(-120)
//                    MT.left.right.equalToSuperview()
//                    MT.height.equalTo(120)
//                })
//            };
//        }
//      
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
