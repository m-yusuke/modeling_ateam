//
//  ViewController.swift
//  modeling_ateam
//
//  Created by yusuke minei on 2018/11/22.
//  Copyright © 2018 yusuke minei. All rights reserved.
//
//！！！！！！！！！！！swiftファイルはcocoaで作成すること！！！！！！！！！！
//参考文献https://yuu.1000quu.com/screen_transition_in_swift
import UIKit

class ViewController: UIViewController {

    @IBAction func ButtonThird(_ sender: Any) {    //Main2.storyboardへの遷移ボタン
        let storyboard: UIStoryboard = UIStoryboard(name: "Main2", bundle: nil)        //"Main2"の部分が遷移先のstoryboardの名前を入れる.
        let nextView = storyboard.instantiateViewController(withIdentifier:"next") as! NextViewController    //"next"の部分に遷移先storyboardのidentityのstoryIDを入れる.NextViewControllerの部分はViewControllerの名前を入れる.
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func ButtonNext(_ sender: Any) {      //Main3.storyboardへの遷移ボタン
        let storyboard: UIStoryboard = UIStoryboard(name: "Main3", bundle: nil)
        let thirdView = storyboard.instantiateViewController(withIdentifier:"third") as! ThirdViewController
        self.present(thirdView, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

