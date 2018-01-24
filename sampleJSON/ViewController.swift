//
//  ViewController.swift
//  sampleJSON
//
//  Created by Eriko Ichinohe on 2018/01/23.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapJSON001(_ sender: UIButton) {
    
        //読み込むファイルパスの取得
        let path = Bundle.main.path(forResource: "JSON001", ofType: "json")
        //Data型(人が読めない形式)の形でファイルの内容を取得
        var jsondata = NSData(contentsOfFile: path!)
        
        //配列に変換
        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Array<Any>
        
        //配列をループしてデバッグエリアに表示
        for dat in jsonArray{
            print("取得できた値:\(dat)")
        }
    }
    
    //TODO:JSON002.jsonを読み込んで、「ダージリンのお値段は600ペソです」となるようなフォーマットでデバッグエリアに文章を表示してください
    
    @IBAction func tapJSON002(_ sender: UIButton) {
        
        //読み込むファイルパスの取得
        let path = Bundle.main.path(forResource: "JSON002", ofType: "json")
        //Data型(人が読めない形式)の形でファイルの内容を取得
        var jsondata = NSData(contentsOfFile: path!)
        
        //配列に変換
        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Array<Any>
        
        //配列をループしてデバッグエリアに表示
        //ヒント：配列を表示する際、Any型からDictionary型へ型変換が必要
        for dat in jsonArray{
            print("取得できた値:\(dat)")
            //よくやる変換方法。超大事
            var dic = dat as! NSDictionary
            
            var name = dic["name"] as! String
            var price = dic["price"] as! Int
            print("\(name)のお値段は\(price)ペソです")
        }
    }
    
    //TODO:JSON003.jsonを読み込んで、「関東の餅：切り餅、醤油：濃口、月見団子：丸型」となるようなフォーマットでデバッグエリアに表示してください
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

