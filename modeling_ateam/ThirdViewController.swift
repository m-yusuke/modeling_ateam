//
//  ThirdViewController.swift
//  modeling_ateam
//
//  Created by  shinnosuke ooshiro on 2018/11/25.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
                self.dismiss(animated:true, completion: nil)
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
