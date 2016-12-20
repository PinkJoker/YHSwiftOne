//
//  YHTabBarController.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/11/22.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit

class YHTabBarController: UITabBarController {
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
//        let childItems = NSArray()
        let homeDict:[String:String] = [kClassKey:homeVC,kTitleKey:YH_Home,kImageKey:"",kSelectImage:""]
        let findDict:[String:String] =  [kClassKey:findVC,kTitleKey:YH_Find,kImageKey:"",kSelectImage:""]
        let friendDict:[String:String] =  [kClassKey:friendVC,kTitleKey:YH_Friend,kImageKey:"",kSelectImage:""]
        let myDict:[String:String] =  [kClassKey:myCenterVC,kTitleKey:YH_MyContent,kImageKey:"",kSelectImage:""]
      //  let childItems:[Dictionary] = [homeDict,findDict,friendDict,myDict]
        let childItens:Array = [homeDict,findDict,friendDict,myDict]
        for dic in childItens {
            print(dic)

        }
        

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
