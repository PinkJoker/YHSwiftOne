//
//  HomeViewController.swift
//  YHSwift3.0
//
//  Created by 我叫MT on 16/11/22.
//  Copyright © 2016年 Pinksnow. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var homeTableView = UITableView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeTableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height-64), style: UITableViewStyle.grouped)
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self;
        self.view.addSubview(self.homeTableView)
        self.homeTableView.snp.makeConstraints { (MT) in
            MT.edges.equalTo(UIEdgeInsets.init(top: 64, left: 0, bottom: 0, right: 0))
        }
        self.homeTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "homeCell")
   
//        self.homeTableView.tableHeaderView
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "homeCell")!
        cell.textLabel?.text = "主页"
        cell.backgroundColor = UIColor.cyan
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {

        return 0.1
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let homeHeaderFooterView:homeTableViewHeaderFooterView? = homeTableViewHeaderFooterView.init(reuseIdentifier: "homeHeaderView")
       // self.homeTableView.tableHeaderView = homeHeaderFooterView
        return homeHeaderFooterView
//    let homeHeaderFooterView:homeTableViewHeaderFooterView? = homeTableViewHeaderFooterView.init(reuseIdentifier: "homeHeaderView")
//        return homeHeaderFooterView
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
