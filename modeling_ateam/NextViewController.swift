//
//  NextViewController.swift
//  modeling_ateam
//
//  Created by  shinnosuke ooshiro on 2018/11/25.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    @IBAction func BottunThird(_ sender: Any) {     //Main3.storyboardへの遷移ボタン
        let storyboard: UIStoryboard = UIStoryboard(name: "Main3", bundle: nil)
        let thirdView = storyboard.instantiateViewController(withIdentifier:"third") as! ThirdViewController
        self.present(thirdView, animated: true, completion: nil)
    }
    @IBAction func BottunTurn(_ sender: Any) {      //Main.storyboardへの戻るボタン
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
