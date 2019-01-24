//
//  DiagnosisViewController.swift
//  modeling_ateam
//
//  Created by yusuke minei on 2018/12/16.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

class DiagnosisViewController: UIViewController, UITextFieldDelegate {


    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }
    @IBOutlet weak var ProgCheckbox: CCheckbox!

    @IBOutlet weak var LinerCheckbox: CCheckbox!
    @IBOutlet weak var SepCheckbox: CCheckbox!
    @IBOutlet weak var ComSysCheckbox: CCheckbox!
    @IBOutlet weak var AlgCheckbox: CCheckbox!
    @IBOutlet weak var OSCheckbox: CCheckbox!
    @IBOutlet weak var DBCheckbox: CCheckbox!
    @IBOutlet weak var DataScienceCheckbox: CCheckbox!
    @IBOutlet weak var InfoCheckbox: CCheckbox!
    @IBOutlet weak var ArchCheckbox: CCheckbox!
    @IBOutlet weak var MathIICheckbox: CCheckbox!
    @IBOutlet weak var MathIIICheckbox: CCheckbox!
    @IBOutlet weak var AICheckbox: CCheckbox!
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "toTwo", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        ProgCheckbox.delegate = self
        
        ProgCheckbox.animation = .showHideTransitionViews
        LinerCheckbox.delegate = self
        
        LinerCheckbox.animation = .showHideTransitionViews
        SepCheckbox.delegate = self
        
        SepCheckbox.animation = .showHideTransitionViews
        ComSysCheckbox.delegate = self
        
        ComSysCheckbox.animation = .showHideTransitionViews
        AlgCheckbox.delegate = self
        
        AlgCheckbox.animation = .showHideTransitionViews
        OSCheckbox.delegate = self
        
        OSCheckbox.animation = .showHideTransitionViews
        DBCheckbox.delegate = self
        
        DBCheckbox.animation = .showHideTransitionViews
        DataScienceCheckbox.delegate = self
        
        DataScienceCheckbox.animation = .showHideTransitionViews
        InfoCheckbox.delegate = self
        
        InfoCheckbox.animation = .showHideTransitionViews
        ArchCheckbox.delegate = self
        
        ArchCheckbox.animation = .showHideTransitionViews
        MathIICheckbox.delegate = self
        
        MathIICheckbox.animation = .showHideTransitionViews
        MathIIICheckbox.delegate = self
        
        MathIIICheckbox.animation = .showHideTransitionViews
        AICheckbox.delegate = self
        
        AICheckbox.animation = .showHideTransitionViews
        
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

extension DiagnosisViewController: CheckboxDelegate {
    func didSelect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case ProgCheckbox:
            print("ProgCheckbox selected")
            appDelegate.result["akamine"]! += 1
            appDelegate.result["yamada"]! +=  1
            appDelegate.result["NAL"]! += 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case LinerCheckbox:
            appDelegate.result["endo"]! += 3
            appDelegate.result["NAL"]! += 2
            appDelegate.result["yamada"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.result["nagayama"]! += 1
            appDelegate.result["nakamura"]! += 1
            break
        case SepCheckbox:
            appDelegate.result["tamaki"]! += 3
            appDelegate.result["kono"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["yoshida"]! += 2
            break
        case ComSysCheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 3
            appDelegate.result["yoshida"]! += 1
            appDelegate.result["kono"]! += 1
            break
        case AlgCheckbox:
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["kono"]! += 1
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case OSCheckbox:
            appDelegate.result["kono"]! += 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case DBCheckbox:
            appDelegate.result["nagayama"]! += 3
            break
        case DataScienceCheckbox:
            appDelegate.result["okazaki"]! += 3
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.result["yamada"]! += 2
            appDelegate.result["endo"]! += 2
            break
        case InfoCheckbox:
            appDelegate.result["nagatani"]! += 3
            appDelegate.result["miyazato"]! += 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case ArchCheckbox:
            appDelegate.result["wada"]! += 3
            appDelegate.result["yoshida"]! += 2
            appDelegate.result["kang"]! += 2
            appDelegate.result["kono"]! += 2
            break
        case MathIICheckbox:
            appDelegate.result["endo"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["miyazato"]! += 2
            break
        case MathIIICheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["miyazato"]! += 2
            break
        case AICheckbox:
            appDelegate.result["endo"]! += 3
            appDelegate.result["yamada"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case ProgCheckbox:
            print("ProgCheckbox selected")
            appDelegate.result["akamine"]! -= 1
            appDelegate.result["yamada"]! -=  1
            appDelegate.result["NAL"]! -= 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case LinerCheckbox:
            appDelegate.result["endo"]! -= 3
            appDelegate.result["NAL"]! -= 2
            appDelegate.result["yamada"]! -= 2
            appDelegate.result["akamine"]! -= 2
            appDelegate.result["nagayama"]! -= 1
            appDelegate.result["nakamura"]! -= 1
            break
        case SepCheckbox:
            appDelegate.result["tamaki"]! -= 3
            appDelegate.result["kono"]! -= 2
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["yoshida"]! -= 2
            break
        case ComSysCheckbox:
            appDelegate.result["kang"]! -= 2
            appDelegate.result["wada"]! -= 3
            appDelegate.result["yoshida"]! -= 1
            appDelegate.result["kono"]! -= 1
            break
        case AlgCheckbox:
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["kono"]! -= 1
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case OSCheckbox:
            appDelegate.result["kono"]! -= 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case DBCheckbox:
            appDelegate.result["nagayama"]! -= 3
            break
        case DataScienceCheckbox:
            appDelegate.result["okazaki"]! -= 3
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["NAL"]! -= 2
            appDelegate.result["akamine"]! -= 2
            appDelegate.result["yamada"]! -= 2
            appDelegate.result["endo"]! -= 2
            break
        case InfoCheckbox:
            appDelegate.result["nagatani"]! -= 3
            appDelegate.result["miyazato"]! -= 2
            for (key,value) in appDelegate.result {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case ArchCheckbox:
            appDelegate.result["wada"]! -= 3
            appDelegate.result["yoshida"]! -= 2
            appDelegate.result["kang"]! -= 2
            appDelegate.result["kono"]! -= 2
            break
        case MathIICheckbox:
            appDelegate.result["endo"]! -= 2
            appDelegate.result["wada"]! -= 2
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["miyazato"]! -= 2
            break
        case MathIIICheckbox:
            appDelegate.result["kang"]! -= 2
            appDelegate.result["wada"]! -= 2
            appDelegate.result["miyazato"]! -= 2
            break
        case AICheckbox:
            appDelegate.result["endo"]! -= 3
            appDelegate.result["yamada"]! -= 2
            appDelegate.result["NAL"]! -= 2
            appDelegate.result["akamine"]! -= 2
            break
        default:
            break
        }
    }
}

class QuestionTwoViewController: UIViewController{
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "toThree", sender: self)
    }
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
        self.dismiss(animated:true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class QuestionThreeViewController: UIViewController{
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "toFour", sender: self)
    }
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
        self.dismiss(animated:true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class QuestionFourViewController: UIViewController{
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
        self.dismiss(animated:true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

