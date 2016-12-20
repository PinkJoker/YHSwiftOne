//
//  ViewController.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/9/27.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit
import Foundation

//import 
class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    let kClassKey = "RootClassString"
    let kTitleKey = "title"
    let kImageKey = "imageName"
    let kSelectImage = "selectedImageName"
    let homeVC = "HomeViewController"
    let findVC = "FindViewController"
    let friendVC = "FriendViewController"
    let myCenterVC = "MyCenterViewController"
    
    
    let YH_Home = "主页"
    let YH_Find = "发现"
    let YH_Friend = "朋友圈"
    let YH_MyContent = "我的"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let homeDict:[String:String] = [kClassKey:homeVC,kTitleKey:YH_Home,kImageKey:"",kSelectImage:""]
        let findDict:[String:String] =  [kClassKey:findVC,kTitleKey:YH_Find,kImageKey:"",kSelectImage:""]
        let friendDict:[String:String] =  [kClassKey:friendVC,kTitleKey:YH_Friend,kImageKey:"",kSelectImage:""]
        let myDict:[String:String] =  [kClassKey:myCenterVC,kTitleKey:YH_MyContent,kImageKey:"",kSelectImage:""]
        let childItens:Array = [homeDict,findDict,friendDict,myDict]
        for dic in childItens {
            let vcStr  = dic[kClassKey]
//            let str = "YHSwift3.0" + vcStr! + "HomeViewController"
//            let vc = NSClassFromString(str) as! UIViewController.Type
            
//            let cls:AnyClass? = NSClassFromString((vcStr as! String) + "." + HomeViewController)
//            guard let clsType = cls as? UIViewController.Type else {
//                
//            }
//            let  = <#value#>
            
         //   print(vc)
         //   var  nav = UINavigationController.init(rootViewController: vc)
            
            
            print(dic[kClassKey])
        }
    
        
        
        var tableView:UITableView?
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height), style: UITableViewStyle.grouped)
        tableView!.delegate = self
        tableView!.dataSource = self;
        tableView!.register(kTableViewCell.classForCoder(), forCellReuseIdentifier:"swiftCell" )
        self.view.addSubview(tableView!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let  cell:kTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "swiftCell") as! kTableViewCell!
        cell.titleString.text = "测试数据啊"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let second = SecondViewController()
        self.navigationController?.pushViewController(second, animated: true)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

