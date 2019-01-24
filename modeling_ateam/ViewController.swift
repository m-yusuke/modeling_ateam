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
    
    var window: UIWindow?

    @IBAction func ButtonThird(_ sender: Any) {    //Main2.storyboardへの遷移ボタン
        let storyboard: UIStoryboard = UIStoryboard(name: "LabList", bundle: nil)        //"Main2"の部分が遷移先のstoryboardの名前を入れる.
        let nextView = storyboard.instantiateViewController(withIdentifier:"LabList") as! NextViewController    //"next"の部分に遷移先storyboardのidentityのstoryIDを入れる.NextViewControllerの部分はViewControllerの名前を入れる.
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func ButtonNext(_ sender: Any) {      //Main3.storyboardへの遷移ボタン
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        for name in appDelegate.result.keys {
            appDelegate.result[name] = 0
        }
        let storyboard: UIStoryboard = UIStoryboard(name: "diagnosis", bundle: nil)
        let thirdView = storyboard.instantiateViewController(withIdentifier:"diagnosis") as! DiagnosisViewController
        self.present(thirdView, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print("Number:\(appDelegate.result["akamine"]!)")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // destinationをUINavigationControllerにキャストしてインスタンス化
        let navVC = segue.destination as! UINavigationController
        // navigationControllerのtopViewControllerを遷移したいViewControllerでインスタンス化
        _ = navVC.topViewController as! DiagnosisViewController
    }
}

