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
    @IBOutlet weak var DigSignalCheckbox: CCheckbox!
    
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "toTwo", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        ProgCheckbox.delegate = self
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
        
        DigSignalCheckbox.delegate = self
        DigSignalCheckbox.animation = .showHideTransitionViews
        DigSignalCheckbox.isCheckboxSelected = appDelegate.Question1status["digsignal"]!
        
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
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case SepCheckbox:
            appDelegate.result["tamaki"]! += 3
            appDelegate.result["kono"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["yoshida"]! += 2
            appDelegate.Question1status["sep"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ComSysCheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 3
            appDelegate.result["yoshida"]! += 1
            appDelegate.result["kono"]! += 1
            appDelegate.Question1status["comsys"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
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
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DataScienceCheckbox:
            appDelegate.result["okazaki"]! += 3
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.result["yamada"]! += 2
            appDelegate.result["endo"]! += 2
            appDelegate.Question1status["datascience"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
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
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathIICheckbox:
            appDelegate.result["endo"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["nakamura"]! += 2
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question1status["mathii"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathIIICheckbox:
            appDelegate.result["kang"]! += 2
            appDelegate.result["wada"]! += 2
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question1status["mathiii"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AICheckbox:
            appDelegate.result["endo"]! += 3
            appDelegate.result["yamada"]! += 2
            appDelegate.result["NAL"]! += 2
            appDelegate.result["akamine"]! += 2
            appDelegate.Question1status["ai"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DigSignalCheckbox:
            appDelegate.result["kang"]! += 3
            appDelegate.result["wada"]! += 1
            appDelegate.Question1status["digsignal"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case ProgCheckbox:
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
        case DigSignalCheckbox:
            appDelegate.result["kang"]! -= 3
            appDelegate.result["wada"]! -= 1
            appDelegate.Question1status["digsignal"]! = false
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
            appDelegate.result["yoshida"]! += 3
            appDelegate.result["wada"]! +=  2
            appDelegate.result["kang"]! += 1
            appDelegate.Question2status["yoshida"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case KunitaCheckbox:
            appDelegate.result["kunita"]! += 2
            appDelegate.Question2status["kunita"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case AkamineCheckbox:
            appDelegate.result["akamine"]! += 3
            appDelegate.result["kono"]! += 1
            appDelegate.result["nakamura"]! += 1
            appDelegate.result["NAL"]! += 1
            appDelegate.Question2status["akamine"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MiyazatoCheckbox:
            appDelegate.result["miyazato"]! += 2
            appDelegate.Question2status["miyazato"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case YoshidaCheckbox:
            appDelegate.result["yoshida"]! -= 3
            appDelegate.result["wada"]! -=  2
            appDelegate.result["kang"]! -= 1
            appDelegate.Question2status["yoshida"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case KunitaCheckbox:
            appDelegate.result["kunita"]! -= 2
            appDelegate.Question2status["kunita"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case AkamineCheckbox:
            appDelegate.result["akamine"]! -= 3
            appDelegate.result["kono"]! -= 1
            appDelegate.result["nakamura"]! -= 1
            appDelegate.result["NAL"]! -= 1
            appDelegate.Question2status["akamine"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MiyazatoCheckbox:
            appDelegate.result["miyazato"]! -= 2
            appDelegate.Question2status["miyazato"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
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
    
    @IBOutlet weak var PythonCheckbox: CCheckbox!
    @IBOutlet weak var PerlCheckbox: CCheckbox!
    @IBOutlet weak var ClangCheckbox: CCheckbox!
    @IBOutlet weak var PHPCheckbox: CCheckbox!
    @IBOutlet weak var VHDLCheckbox: CCheckbox!
    @IBOutlet weak var RlangCheckbox: CCheckbox!
    @IBOutlet weak var JavaCheckbox: CCheckbox!
    @IBOutlet weak var AssemblyCheckbox: CCheckbox!
    @IBOutlet weak var AgdaCheckbox: CCheckbox!
    @IBOutlet weak var HaskellCheckbox: CCheckbox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        PythonCheckbox.delegate = self
        PythonCheckbox.animation = .showHideTransitionViews
        PythonCheckbox.isCheckboxSelected = appDelegate.Question3status["python"]!
        
        PerlCheckbox.delegate = self
        PerlCheckbox.animation = .showHideTransitionViews
        PerlCheckbox.isCheckboxSelected = appDelegate.Question3status["perl"]!
        
        ClangCheckbox.delegate = self
        ClangCheckbox.animation = .showHideTransitionViews
        ClangCheckbox.isCheckboxSelected = appDelegate.Question3status["clang"]!
        
        PHPCheckbox.delegate = self
        PHPCheckbox.animation = .showHideTransitionViews
        PHPCheckbox.isCheckboxSelected = appDelegate.Question3status["php"]!
        
        VHDLCheckbox.delegate = self
        VHDLCheckbox.animation = .showHideTransitionViews
        VHDLCheckbox.isCheckboxSelected = appDelegate.Question3status["vhdl"]!
        
        RlangCheckbox.delegate = self
        RlangCheckbox.animation = .showHideTransitionViews
        RlangCheckbox.isCheckboxSelected = appDelegate.Question3status["rlang"]!
        
        JavaCheckbox.delegate = self
        JavaCheckbox.animation = .showHideTransitionViews
        JavaCheckbox.isCheckboxSelected = appDelegate.Question3status["java"]!
        
        AssemblyCheckbox.delegate = self
        AssemblyCheckbox.animation = .showHideTransitionViews
        AssemblyCheckbox.isCheckboxSelected = appDelegate.Question3status["assembly"]!
        
        AgdaCheckbox.delegate = self
        AgdaCheckbox.animation = .showHideTransitionViews
        AgdaCheckbox.isCheckboxSelected = appDelegate.Question3status["agda"]!
        
        HaskellCheckbox.delegate = self
        HaskellCheckbox.animation = .showHideTransitionViews
        HaskellCheckbox.isCheckboxSelected = appDelegate.Question3status["haskell"]!
    }
}

extension QuestionThreeViewController: CheckboxDelegate {
    func didSelect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case PythonCheckbox:
            appDelegate.result["endo"]! += 2
            appDelegate.result["NAL"]! +=  2
            appDelegate.result["okazaki"]! += 1
            appDelegate.Question3status["python"]! = true
            for key in appDelegate.result.keys {
                if key == "kono" || key == "yoshida" || key == "wada" || key == "nagatani" {
                    continue
                }
                appDelegate.result[key]! += 1
            }
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case PerlCheckbox:
            appDelegate.result["kono"]! += 3
            appDelegate.Question3status["perl"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ClangCheckbox:
            appDelegate.result["kono"]! += 1
            appDelegate.result["nakamura"]! += 1
            appDelegate.Question3status["clang"]! = true
            for key in appDelegate.result.keys {
                appDelegate.result[key]! += 1
                print(key,appDelegate.result[key]!)
            }
            break
        case PHPCheckbox:
            appDelegate.result["miyazato"]! += 1
            appDelegate.result["akamine"]! += 1
            appDelegate.Question3status["php"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case VHDLCheckbox:
            appDelegate.result["yoshida"]! += 3
            appDelegate.result["wada"]! += 3
            appDelegate.Question3status["vhdl"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case RlangCheckbox:
            appDelegate.result["okazaki"]! += 3
            appDelegate.result["endo"]! += 1
            appDelegate.result["NAL"]! += 1
            appDelegate.Question3status["rlang"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case JavaCheckbox:
            appDelegate.result["NAL"]! += 1
            appDelegate.result["yamada"]! += 1
            appDelegate.result["akamine"]! += 1
            appDelegate.Question3status["java"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AssemblyCheckbox:
            appDelegate.result["yoshida"]! += 3
            appDelegate.result["wada"]! += 3
            appDelegate.result["kang"]! += 1
            appDelegate.result["kono"]! += 2
            appDelegate.Question3status["assembly"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AgdaCheckbox:
            appDelegate.result["kono"]! += 3
            appDelegate.Question3status["agda"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case HaskellCheckbox:
            appDelegate.result["kono"]! += 3
            appDelegate.result["nakamura"]! += 3
            appDelegate.Question3status["haskell"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case PythonCheckbox:
            appDelegate.result["endo"]! -= 2
            appDelegate.result["NAL"]! -=  2
            appDelegate.result["okazaki"]! -= 1
            appDelegate.Question3status["python"]! = false
            for key in appDelegate.result.keys {
                if key == "kono" || key == "yoshida" || key == "wada" || key == "nagatani" {
                    continue
                }
                appDelegate.result[key]! -= 1
            }
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case PerlCheckbox:
            appDelegate.result["kono"]! -= 3
            appDelegate.Question3status["perl"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ClangCheckbox:
            appDelegate.result["kono"]! -= 1
            appDelegate.result["nakamura"]! -= 1
            appDelegate.Question2status["akamine"]! = false
            for key in appDelegate.result.keys {
                appDelegate.result[key]! -= 1
                print(key,appDelegate.result[key]!)
            }
            break
        case PHPCheckbox:
            appDelegate.result["miyazato"]! -= 1
            appDelegate.result["akamine"]! -= 1
            appDelegate.Question3status["php"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case VHDLCheckbox:
            appDelegate.result["yoshida"]! -= 3
            appDelegate.result["wada"]! -= 3
            appDelegate.Question3status["vhdl"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case RlangCheckbox:
            appDelegate.result["okazaki"]! -= 3
            appDelegate.result["endo"]! -= 1
            appDelegate.result["NAL"]! -= 1
            appDelegate.Question3status["rlang"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case JavaCheckbox:
            appDelegate.result["NAL"]! -= 1
            appDelegate.result["yamada"]! -= 1
            appDelegate.result["akamine"]! -= 1
            appDelegate.Question3status["java"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AssemblyCheckbox:
            appDelegate.result["yoshida"]! -= 3
            appDelegate.result["wada"]! -= 3
            appDelegate.result["kang"]! -= 1
            appDelegate.result["kono"]! -= 2
            appDelegate.Question3status["assembly"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AgdaCheckbox:
            appDelegate.result["kono"]! -= 3
            appDelegate.Question3status["agda"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case HaskellCheckbox:
            appDelegate.result["kono"]! -= 3
            appDelegate.result["nakamura"]! -= 3
            appDelegate.Question3status["haskell"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
}


class QuestionFourViewController: UIViewController{
    @IBAction func Bottonturn(_ sender: Any) {       //Main2.storyboardへの戻るボタン
        self.dismiss(animated:true, completion: nil)
    }
    
    @IBOutlet weak var SecurityCheckbox: CCheckbox!
    @IBOutlet weak var AgricultureCheckbox: CCheckbox!
    @IBOutlet weak var RadioCheckbox: CCheckbox!
    @IBOutlet weak var ImgProcessingCheckbox: CCheckbox!
    @IBOutlet weak var NLPCheckbox: CCheckbox!
    @IBOutlet weak var ParallelCheckbox: CCheckbox!
    @IBOutlet weak var DeepLearningCheckbox: CCheckbox!
    @IBOutlet weak var IntelligenceRobotCheckbox: CCheckbox!
    @IBOutlet weak var ARCheckbox: CCheckbox!
    @IBOutlet weak var DistributeCheckbox: CCheckbox!
    @IBOutlet weak var MathAnalysisCheckbox: CCheckbox!
    @IBOutlet weak var CalcArchitectureCheckbox: CCheckbox!
    @IBOutlet weak var SignalProcessingCheckbox: CCheckbox!
    @IBOutlet weak var BiomechanicsCheckbox: CCheckbox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        SecurityCheckbox.delegate = self
        SecurityCheckbox.animation = .showHideTransitionViews
        SecurityCheckbox.isCheckboxSelected = appDelegate.Question4status["security"]!
        
        AgricultureCheckbox.delegate = self
        AgricultureCheckbox.animation = .showHideTransitionViews
        AgricultureCheckbox.isCheckboxSelected = appDelegate.Question4status["agriculture"]!
        
        RadioCheckbox.delegate = self
        RadioCheckbox.animation = .showHideTransitionViews
        RadioCheckbox.isCheckboxSelected = appDelegate.Question4status["radio"]!
        
        ImgProcessingCheckbox.delegate = self
        ImgProcessingCheckbox.animation = .showHideTransitionViews
        ImgProcessingCheckbox.isCheckboxSelected = appDelegate.Question4status["img"]!
        
        NLPCheckbox.delegate = self
        NLPCheckbox.animation = .showHideTransitionViews
        NLPCheckbox.isCheckboxSelected = appDelegate.Question4status["nlp"]!
        
        ParallelCheckbox.delegate = self
        ParallelCheckbox.animation = .showHideTransitionViews
        ParallelCheckbox.isCheckboxSelected = appDelegate.Question4status["parallel"]!
        
        DeepLearningCheckbox.delegate = self
        DeepLearningCheckbox.animation = .showHideTransitionViews
        DeepLearningCheckbox.isCheckboxSelected = appDelegate.Question4status["deeplearning"]!
        
        IntelligenceRobotCheckbox.delegate = self
        IntelligenceRobotCheckbox.animation = .showHideTransitionViews
        IntelligenceRobotCheckbox.isCheckboxSelected = appDelegate.Question4status["intelligence"]!
        
        ARCheckbox.delegate = self
        ARCheckbox.animation = .showHideTransitionViews
        ARCheckbox.isCheckboxSelected = appDelegate.Question4status["ar"]!
        
        DistributeCheckbox.delegate = self
        DistributeCheckbox.animation = .showHideTransitionViews
        DistributeCheckbox.isCheckboxSelected = appDelegate.Question4status["distribute"]!
        
        MathAnalysisCheckbox.delegate = self
        MathAnalysisCheckbox.animation = .showHideTransitionViews
        MathAnalysisCheckbox.isCheckboxSelected = appDelegate.Question4status["math"]!
        
        CalcArchitectureCheckbox.delegate = self
        CalcArchitectureCheckbox.animation = .showHideTransitionViews
        CalcArchitectureCheckbox.isCheckboxSelected = appDelegate.Question4status["calc"]!
        
        SignalProcessingCheckbox.delegate = self
        SignalProcessingCheckbox.animation = .showHideTransitionViews
        SignalProcessingCheckbox.isCheckboxSelected = appDelegate.Question4status["signal"]!
        
        BiomechanicsCheckbox.delegate = self
        BiomechanicsCheckbox.animation = .showHideTransitionViews
        BiomechanicsCheckbox.isCheckboxSelected = appDelegate.Question4status["biomechanics"]!
    }
}

extension QuestionFourViewController: CheckboxDelegate {
    func didSelect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case SecurityCheckbox:
            appDelegate.result["nagatani"]! += 3
            appDelegate.Question4status["security"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AgricultureCheckbox:
            appDelegate.result["tamaki"]! += 3
            appDelegate.Question4status["agriculture"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case RadioCheckbox:
            appDelegate.result["wada"]! += 3
            appDelegate.result["miyazato"]! += 1
            appDelegate.Question4status["radio"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ImgProcessingCheckbox:
            appDelegate.result["nagayama"]! += 3
            appDelegate.result["endo"]! += 1
            appDelegate.Question4status["img"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case NLPCheckbox:
            appDelegate.result["NAL"]! += 3
            appDelegate.result["endo"]! += 1
            appDelegate.Question4status["nlp"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ParallelCheckbox:
            appDelegate.result["nakamura"]! += 3
            appDelegate.Question4status["parallel"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DeepLearningCheckbox:
            appDelegate.result["endo"]! += 3
            appDelegate.result["nagayama"]! += 1
            appDelegate.Question4status["deeplearning"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case IntelligenceRobotCheckbox:
            appDelegate.result["yamada"]! += 3
            appDelegate.Question4status["intelligence"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ARCheckbox:
            appDelegate.result["akamine"]! += 3
            appDelegate.Question4status["ar"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DistributeCheckbox:
            appDelegate.result["kono"]! += 3
            appDelegate.Question4status["distribute"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathAnalysisCheckbox:
            appDelegate.result["okazaki"]! += 3
            appDelegate.Question4status["math"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case CalcArchitectureCheckbox:
            appDelegate.result["yoshida"]! += 3
            appDelegate.result["wada"]! += 1
            appDelegate.Question4status["calc"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case SignalProcessingCheckbox:
            appDelegate.result["kang"]! += 3
            appDelegate.result["wada"]! += 1
            appDelegate.Question4status["signal"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case BiomechanicsCheckbox:
            appDelegate.result["kunita"]! += 3
            appDelegate.Question4status["biomechanics"]! = true
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
    
    func didDeselect(_ checkbox: CCheckbox) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        switch checkbox {
        case SecurityCheckbox:
            appDelegate.result["nagatani"]! -= 3
            appDelegate.Question4status["security"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case AgricultureCheckbox:
            appDelegate.result["tamaki"]! -= 3
            appDelegate.Question4status["agriculture"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case RadioCheckbox:
            appDelegate.result["wada"]! -= 3
            appDelegate.result["miyazato"]! -= 1
            appDelegate.Question4status["radio"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ImgProcessingCheckbox:
            appDelegate.result["nagayama"]! -= 3
            appDelegate.result["endo"]! -= 1
            appDelegate.Question4status["img"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case NLPCheckbox:
            appDelegate.result["NAL"]! -= 3
            appDelegate.result["endo"]! -= 1
            appDelegate.Question4status["nlp"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ParallelCheckbox:
            appDelegate.result["nakamura"]! -= 3
            appDelegate.Question4status["parallel"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DeepLearningCheckbox:
            appDelegate.result["endo"]! -= 3
            appDelegate.result["nagayama"]! -= 1
            appDelegate.Question4status["deeplearning"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case IntelligenceRobotCheckbox:
            appDelegate.result["yamada"]! -= 3
            appDelegate.Question4status["intelligence"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case ARCheckbox:
            appDelegate.result["akamine"]! -= 3
            appDelegate.Question4status["ar"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case DistributeCheckbox:
            appDelegate.result["kono"]! -= 3
            appDelegate.Question4status["distribute"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case MathAnalysisCheckbox:
            appDelegate.result["okazaki"]! -= 3
            appDelegate.Question4status["math"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case CalcArchitectureCheckbox:
            appDelegate.result["yoshida"]! -= 3
            appDelegate.result["wada"]! -= 1
            appDelegate.Question4status["calc"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case SignalProcessingCheckbox:
            appDelegate.result["kang"]! -= 3
            appDelegate.result["wada"]! -= 1
            appDelegate.Question4status["signal"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        case BiomechanicsCheckbox:
            appDelegate.result["kunita"]! -= 3
            appDelegate.Question4status["biomechanics"]! = false
            for key in appDelegate.result.keys {
                print(key,appDelegate.result[key]!)
            }
            break
        default:
            break
        }
    }
}
