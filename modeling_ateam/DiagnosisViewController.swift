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
        print(ProgCheckbox.delegate!)
        ProgCheckbox.animation = .showHideTransitionViews
        ProgCheckbox.isCheckboxSelected = appDelegate.Question1status["prog"]!

        LinerCheckbox.delegate = self
        LinerCheckbox.animation = .showHideTransitionViews
        LinerCheckbox.isCheckboxSelected = appDelegate.Question1status["liner"]!

        SepCheckbox.delegate = self
        SepCheckbox.animation = .showHideTransitionViews
        SepCheckbox.isCheckboxSelected = appDelegate.Question1status["sep"]!

        ComSysCheckbox.delegate = self
        ComSysCheckbox.animation = .showHideTransitionViews
        ComSysCheckbox.isCheckboxSelected = appDelegate.Question1status["comsys"]!

        AlgCheckbox.delegate = self
        AlgCheckbox.animation = .showHideTransitionViews
        AlgCheckbox.isCheckboxSelected = appDelegate.Question1status["alg"]!

        OSCheckbox.delegate = self
        OSCheckbox.animation = .showHideTransitionViews
        OSCheckbox.isCheckboxSelected = appDelegate.Question1status["os"]!

        DBCheckbox.delegate = self
        DBCheckbox.animation = .showHideTransitionViews
        DBCheckbox.isCheckboxSelected = appDelegate.Question1status["db"]!

        DataScienceCheckbox.delegate = self
        DataScienceCheckbox.animation = .showHideTransitionViews
        DataScienceCheckbox.isCheckboxSelected = appDelegate.Question1status["datascience"]!

        InfoCheckbox.delegate = self
        InfoCheckbox.animation = .showHideTransitionViews
        InfoCheckbox.isCheckboxSelected = appDelegate.Question1status["info"]!

        ArchCheckbox.delegate = self
        ArchCheckbox.animation = .showHideTransitionViews
        ArchCheckbox.isCheckboxSelected = appDelegate.Question1status["arch"]!

        MathIICheckbox.delegate = self
        MathIICheckbox.animation = .showHideTransitionViews
        MathIICheckbox.isCheckboxSelected = appDelegate.Question1status["mathii"]!

        MathIIICheckbox.delegate = self
        MathIIICheckbox.animation = .showHideTransitionViews
        MathIIICheckbox.isCheckboxSelected = appDelegate.Question1status["mathiii"]!

        AICheckbox.delegate = self
        AICheckbox.animation = .showHideTransitionViews
        AICheckbox.isCheckboxSelected = appDelegate.Question1status["ai"]!
        
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
            
            print(ProgCheckbox)
            appDelegate.Question1status["prog"]! = true
            for key in appDelegate.result.keys {
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
            appDelegate.Question1status["liner"]! = true
            break
        case SepCheckbox:
            appDelegate.result["tamaki"]! += 3
            appDelegate.result["kono"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["yoshida"]! += 2
            appDelegate.Question1status["sep"]! = true
            break
        case ComSysCheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 3
            appDelegate.result["yoshida"]! += 1
            appDelegate.result["kono"]! += 1
            appDelegate.Question1status["comsys"]! = true
            break
        case AlgCheckbox:
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["kono"]! += 1
            appDelegate.Question1status["alg"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case OSCheckbox:
            appDelegate.result["kono"]! += 2
            appDelegate.Question1status["os"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case DBCheckbox:
            appDelegate.result["nagayama"]! += 3
            appDelegate.Question1status["db"]! = true
            break
        case DataScienceCheckbox:
            appDelegate.result["okazaki"]! += 3
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.result["yamada"]! += 2
            appDelegate.result["endo"]! += 2
            appDelegate.Question1status["datascience"]! = true
            break
        case InfoCheckbox:
            appDelegate.result["nagatani"]! += 3
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question1status["info"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case ArchCheckbox:
            appDelegate.result["wada"]! += 3
            appDelegate.result["yoshida"]! += 2
            appDelegate.result["kang"]! += 2
            appDelegate.result["kono"]! += 2
            appDelegate.Question1status["arch"]! = true
            break
        case MathIICheckbox:
            appDelegate.result["endo"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question1status["mathii"]! = true
            break
        case MathIIICheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question1status["mathiii"]! = true
            break
        case AICheckbox:
            appDelegate.result["endo"]! += 3
            appDelegate.result["yamada"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.Question1status["ai"]! = true
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
            appDelegate.Question1status["prog"]! = false
            for key in appDelegate.result.keys {
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
            appDelegate.Question1status["liner"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case SepCheckbox:
            appDelegate.result["tamaki"]! -= 3
            appDelegate.result["kono"]! -= 2
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["yoshida"]! -= 2
            appDelegate.Question1status["sep"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ComSysCheckbox:
            appDelegate.result["kang"]! -= 2
            appDelegate.result["wada"]! -= 3
            appDelegate.result["yoshida"]! -= 1
            appDelegate.result["kono"]! -= 1
            appDelegate.Question1status["comsys"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AlgCheckbox:
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["kono"]! -= 1
            appDelegate.Question1status["ai"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case OSCheckbox:
            appDelegate.result["kono"]! -= 2
            appDelegate.Question1status["os"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case DBCheckbox:
            appDelegate.result["nagayama"]! -= 3
            appDelegate.Question1status["db"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DataScienceCheckbox:
            appDelegate.result["okazaki"]! -= 3
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["NAL"]! -= 2
            appDelegate.result["akamine"]! -= 2
            appDelegate.result["yamada"]! -= 2
            appDelegate.result["endo"]! -= 2
            appDelegate.Question1status["datascience"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case InfoCheckbox:
            appDelegate.result["nagatani"]! -= 3
            appDelegate.result["miyazato"]! -= 2
            appDelegate.Question1status["info"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case ArchCheckbox:
            appDelegate.result["wada"]! -= 3
            appDelegate.result["yoshida"]! -= 2
            appDelegate.result["kang"]! -= 2
            appDelegate.result["kono"]! -= 2
            appDelegate.Question1status["arch"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathIICheckbox:
            appDelegate.result["endo"]! -= 2
            appDelegate.result["wada"]! -= 2
            appDelegate.result["nakamura"]! -= 2
            appDelegate.result["miyazato"]! -= 2
            appDelegate.Question1status["mathii"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathIIICheckbox:
            appDelegate.result["kang"]! -= 2
            appDelegate.result["wada"]! -= 2
            appDelegate.result["miyazato"]! -= 2
            appDelegate.Question1status["mathiii"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AICheckbox:
            appDelegate.result["endo"]! -= 3
            appDelegate.result["yamada"]! -= 2
            appDelegate.result["NAL"]! -= 2
            appDelegate.result["akamine"]! -= 2
            appDelegate.Question1status["ai"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
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
    @IBOutlet weak var YoshidaCheckbox: CCheckbox!
    @IBOutlet weak var KunitaCheckbox: CCheckbox!
    @IBOutlet weak var AkamineCheckbox: CCheckbox!
    @IBOutlet weak var MiyazatoCheckbox: CCheckbox!
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
        self.dismiss(animated:true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        YoshidaCheckbox.delegate = self
        YoshidaCheckbox.animation = .showHideTransitionViews
        YoshidaCheckbox.isCheckboxSelected = appDelegate.Question2status["yoshida"]!

        KunitaCheckbox.delegate = self
        KunitaCheckbox.animation = .showHideTransitionViews
        KunitaCheckbox.isCheckboxSelected = appDelegate.Question2status["kunita"]!

        AkamineCheckbox.delegate = self
        AkamineCheckbox.animation = .showHideTransitionViews
        AkamineCheckbox.isCheckboxSelected = appDelegate.Question2status["akamine"]!

        MiyazatoCheckbox.delegate = self
        MiyazatoCheckbox.animation = .showHideTransitionViews
        MiyazatoCheckbox.isCheckboxSelected = appDelegate.Question2status["miyazato"]!
    }
}

extension QuestionTwoViewController: CheckboxDelegate {
    func didSelect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case YoshidaCheckbox:
            print("YoshidaCheckbox selected")
            appDelegate.result["yoshida"]! += 3
            appDelegate.result["wada"]! +=  2
            appDelegate.result["kang"]! += 1
            appDelegate.Question2status["yoshida"]! = true
            break
        case KunitaCheckbox:
            appDelegate.result["kunita"]! += 2
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            appDelegate.Question2status["kunita"]! = true
            break
        case AkamineCheckbox:
            appDelegate.result["akamine"]! += 3
            appDelegate.result["kono"]! += 1
            appDelegate.result["nakamura"]! += 1
            appDelegate.result["NAL"]! += 1
            appDelegate.Question2status["akamine"]! = true
            break
        case MiyazatoCheckbox:
            appDelegate.result["miyazato"]! += 2
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            appDelegate.Question2status["miyazato"]! = true
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case YoshidaCheckbox:
            print("YoshidaCheckbox selected")
            appDelegate.result["yoshida"]! -= 3
            appDelegate.result["wada"]! -=  2
            appDelegate.result["kang"]! -= 1
            appDelegate.Question2status["yoshida"]! = false
            break
        case KunitaCheckbox:
            appDelegate.result["kunita"]! -= 2
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            appDelegate.Question2status["kunita"]! = false
            break
        case AkamineCheckbox:
            appDelegate.result["akamine"]! -= 3
            appDelegate.result["kono"]! -= 1
            appDelegate.result["nakamura"]! -= 1
            appDelegate.result["NAL"]! -= 1
            appDelegate.Question2status["akamine"]! = false
            break
        case MiyazatoCheckbox:
            appDelegate.result["miyazato"]! -= 2
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            appDelegate.Question2status["miyazato"]! = false
            break
        default:
            break
        }
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

