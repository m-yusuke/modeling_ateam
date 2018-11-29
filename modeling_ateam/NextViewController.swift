//
//  NextViewController.swift
//  modeling_ateam
//
//  Created by  shinnosuke ooshiro on 2018/11/25.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource,ModalViewControllerDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    // データ操作用の配列
    private var array: NSArray = []
    // 出力用の配列
    private var outputArrays: NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = ["akamine","kono","nagatani","nagayama","yosida","nal","nakamura","kunita","kang","endo","tamaki","yamada","okazaki","miyazato","wada"]
        
        outputArrays = array
        
        tableView.dataSource = self    //追加
        tableView.delegate = self // 追加

        // Do any additional setup after loading the view.
    }
    
    // テーブルビューのデリゲードメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // テーブルビューのセル数の設定する。
        return self.outputArrays.count
    }
    
    // 画面遷移処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 検索画面に値を渡す。
        let searchViewController:SearchViewController = segue.destination as! SearchViewController
        searchViewController.items = array
        // 検索画面のデリゲートを設定する。
        searchViewController.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //outputItemsをセルに出力する。
        let cell = tableView.dequeueReusableCell(withIdentifier:  "labCell", for:indexPath as IndexPath)
        cell.textLabel?.text = self.outputArrays[indexPath.row] as? String
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func searchButton(_ sender: Any) {
        performSegue(withIdentifier: "toSearchView", sender: nil)
    }
    
    // 検索画面のデリゲートメソッド
    func modalDidFinished(searchResultReturn: NSArray){
        // 検索画面にて検索した結果を出力用に設定する。
        outputArrays = searchResultReturn
        
        // tableViewを再表示する。
        tableView.reloadData()
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
