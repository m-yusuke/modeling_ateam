//
//  Last.swift
//  modeling_ateam
//
//  Created by  shinnosuke ooshiro on 2019/02/11.
//  Copyright © 2019 yusuke minei. All rights reserved.
//

import UIKit

class Last: UIViewController {
    @IBAction func Back_home(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextView = storyboard.instantiateViewController(withIdentifier:"Main") as! ViewController
        self.present(nextView, animated: true, completion: nil)
    }
    @IBOutlet weak var kekka: UILabel!
    @IBAction func a(_ sender: Any) {
        ab ()
        //kekka.text = "ab()"
    }
    @IBAction func Back(_ sender: Any){
        self.dismiss(animated:true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //let a = appDelegate.result["akamine"]
        
    }
    func ab (){
        var max = 0
        var maxkey:String = ""
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        for (key,_) in appDelegate.result {
            if max <= appDelegate.result[key]!{
                max = appDelegate.result[key]!
                maxkey = key
            }
            //max >= appDelegate.result[key]!
            //_ = appDelegate.result[key]
            //appDelegate.result[key]! += 1
        }
        print(maxkey,max)
        kekka.text = maxkey
        //return maxkey
        
}
}
