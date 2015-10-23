//
//  ViewController.swift
//  week3_day3_002
//
//  Created by Shinya Hirai on 2015/10/21.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "1st View"
        
        self.view.backgroundColor = UIColor.blueColor()
        
        // ボタン生成
        let button = UIButton()
        button.frame = CGRectMake(100, 400, 175, 60)
        button.backgroundColor = UIColor.grayColor()
        button.setTitle("遷移", forState: .Normal)
        button.addTarget(self, action: "tapBtn:", forControlEvents: .TouchUpInside)
        
        // ボタンをviewに追加する
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapBtn(sender: UIButton) {
        let svc = SecondViewController()
        self.navigationController?.pushViewController(svc, animated: true)
    }
    

//    @IBAction func tapBtn(sender: AnyObject) {
//        // NavigationControllerを継承してpushを使ってSecondViewControllerに遷移します。
//        // NavigationControllerの定義自体はViewControllerだけに関わることではないので、
//        // AppDelegate.swiftに定義します。
//        
//        // SecondViewControllerをコードで定義
//        let svc = SecondViewController()
//        
//        // pushを使ってsvcに遷移する命令をだす
//        self.navigationController?.pushViewController(svc, animated: true)
//    }

}

