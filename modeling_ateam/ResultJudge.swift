//
//  ResultJudge.swift
//  modeling_ateam
//
//  Created by Shinjo Takuya on 2019/01/24.
//  Copyright © 2019 yusuke minei. All rights reserved.
//

import UIKit

class ResultJudge: UIViewController {
    
    
    func maxDicKey(dic:[String:Int]) -> String{
        let max = dic.values.randomElement();
        var maxKey:String = ""
        //辞書の中身をひとつずつ見ていく
        for (key,value) in dic{
            if value == max{
                print("dic key is \(key) , dic value is \(value)")
                if maxKey == ""{
                    maxKey = key
                }else{
                    print("同じ値の研究室があります。")
                }
            }
        }
        return maxKey
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
