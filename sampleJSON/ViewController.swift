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
        //Data型の形でファイルの内容を取得
        
        //配列に変換
        
        //配列をループしてデバッグエリアに表示
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

