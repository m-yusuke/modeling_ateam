//
//  SearchViewController.swift
//  modeling_ateam
//
//  Created by yusuke minei on 2018/11/29.
//  Copyright © 2018 yusuke minei. All rights reserved.
//

import UIKit

// プロトコルを生成する。
protocol ModalViewControllerDelegate{
    // 検索結果を引数とするデリゲートメソッド
    func modalDidFinished(searchResultReturn: NSArray)
}

class SearchViewController: UIViewController,UISearchBarDelegate {
    
    var delegate : ModalViewControllerDelegate! = nil // デリゲート
    var items : NSArray = []                          // 検索用配列
    private var searchResult : NSArray = []           // 検索結果配列

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // デリゲートを設定
        searchBar.delegate = self

        // Do any additional setup after loading the view.
    }
    
    // 渡された文字列を含む要素を検索する。
    func searchItems(searchText: String){
        // 要素を検索する。
        if searchText != "" {
            searchResult = items.filter { item in
                return (item as! String).contains(searchText)
                } as NSArray
        }else{
            // 渡された文字列が空の場合は全てを表示する。
            searchResult = items
        }
    }
    
    // SearchBarのデリゲードメソッド
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // キャンセルされた場合、検索は行わない。
        searchBar.text = ""
        self.view.endEditing(true)
        searchResult = items
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // キーボードを閉じる。
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func searchButton(_ sender: Any) {
        // 検索処理を実行する。
        searchItems(searchText: searchBar.text! as String)
        // デリゲートメソッドを実行する。
        self.delegate.modalDidFinished(searchResultReturn: searchResult)
        // 画面を閉じる。
        dismiss(animated: true, completion: nil)
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
