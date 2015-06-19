//
//  ViewController.swift
//  myCalc
//
//  Created by win on 2015/04/03.
//  Copyright (c) 2015年 win. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ↓↓↓変数の宣言 → 教科書：P.65~72
    
    // ↓↓↓画面上のボタンとプログラムを接続する → 教科書：P.169~171
    @IBOutlet weak var vLabel: UILabel!     // 押したボタンを表示するラベル
    @IBOutlet weak var enzanLabel: UILabel! // 演算子を表示するラベル
    // ↑↑↑END   画面上のボタンとプログラムを接続する → 教科書：P.169~171
    
    var enzanKind = -1          // 演算子の種類 0：加算 1:減算 2:掛け算 3:割り算 -1:初期値
    var leftNum = 0             // 左辺の値
    var rightNum = 0            // 右辺の値
    var reCalc = 0              // 再計算
    
    // ↑↑↑変数の宣言 → 教科書：P.65~72
    
    // ↓↓↓この部分はアプリを起動させた瞬間に一度だけ実行される
    override func viewDidLoad() {
        super.viewDidLoad()
        // ラベル初期化
        // 押したボタンを表示するラベルの初期値を「0」とする
        vLabel.text = "0"
        // 演算子を表示するラベルは何も表示させない
        enzanLabel.text = ""
    }
    // ↑↑↑この部分はアプリを起動させた瞬間に一度だけ実行される
    
    // ↓↓↓今は無視
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // ↑↑↑今は無視
    
    // ** ここから下がボタン押下処理 *****************************************************************//
    
    // ↓↓↓ACのボタン押下
    @IBAction func reset(sender: UIButton) {
        // 初期化 → viewDidLoadと同じ処理を記述する
        // ラベル初期化
        // 押したボタンを表示するラベルの初期値を「0」とする
        vLabel.text = "0"
        // 演算子を表示するラベルは何も表示させない
        enzanLabel.text = ""
    }
    // ↑↑↑ACのボタン押下
    
    // ↓↓↓1のボタン押下
    @IBAction func tap1(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "1"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "1"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "1"
        }
    }
    // ↑↑↑1のボタン押下
    
    // ↓↓↓2のボタン押下
    @IBAction func tap2(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "2"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "2"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "2"
        }
    }
    // ↑↑↑2のボタン押下
    
    // ↓↓↓3のボタン押下
    @IBAction func tap3(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "3"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "3"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "3"
        }
    }
    // ↑↑↑3のボタン押下
    
    // ↓↓↓4のボタン押下
    @IBAction func tap4(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "4"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "4"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "4"
        }
    }
    // ↑↑↑4のボタン押下
    
    // ↓↓↓5のボタン押下
    @IBAction func tap5(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "5"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "5"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "5"
        }
    }
    // ↑↑↑5のボタン押下
    
    // ↓↓↓6のボタン押下
    @IBAction func tap6(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "6"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "6"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "6"
        }
    }
    // ↑↑↑6のボタン押下
    
    // ↓↓↓7のボタン押下
    @IBAction func tap7(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "7"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "7"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "7"
        }
    }
    // ↑↑↑7のボタン押下
    
    // ↓↓↓8のボタン押下
    @IBAction func tap8(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "8"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "8"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "8"
        }
    }
    // ↑↑↑8のボタン押下
    
    // ↓↓↓9のボタン押下
    @IBAction func tap9(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "9"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "9"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "9"
        }
    }
    // ↑↑↑9のボタン押下
    
    // ↓↓↓9のボタン押下
    @IBAction func tap0(sender: UIButton) {
        // ↓↓↓条件分岐 → 教科書：P.97~102
        if vLabel.text == "0" {
            // 押したボタンを表示するラベルが「0」ならラベルに数字を表示
            vLabel.text = "0"
            // 再計算の値を0にする
            reCalc = 0
        } else if reCalc == 1 {
            // 再計算の値が1ならラベルに数字を表示
            vLabel.text = "0"
            // 再計算の値を0にする
            reCalc = 0
        } else {
            // 上記条件に満たない場合　例）既に何かしらの数字がラベルに表示されている場合
            // ラベルに数字を追加する
            vLabel.text = vLabel.text! + "0"
        }
    }
    // ↑↑↑9のボタン押下
    
    
    // ↓↓↓プラスボタン押下
    @IBAction func tapPlus(sender: UIButton) {
        // 演算子を表示するラベルを更新
        enzanLabel.text = "➕"
        // 演算子が押されたので左辺が確定 → 左辺用の変数に現在表示されているラベルを代入
        leftNum = vLabel.text!.toInt()!
        // 押したボタンを表示するラベルを「0」にする
        vLabel.text = "0"
        // 演算の種類を「0」とする
        enzanKind = 0
    }
    // ↑↑↑プラスボタン押下
    
    // ↓↓↓プラスボタン押下
    @IBAction func tapMinus(sender: UIButton) {
        // 演算子を表示するラベルを更新
        enzanLabel.text = "➖"
        // 演算子が押されたので左辺が確定 → 左辺用の変数に現在表示されているラベルを代入
        leftNum = vLabel.text!.toInt()!
        // 押したボタンを表示するラベルを「0」にする
        vLabel.text = "0"
        // 演算の種類を「0」とする
        enzanKind = 1
    }
    // ↑↑↑プラスボタン押下
    
    // ↓↓↓プラスボタン押下
    @IBAction func tapKakeru(sender: UIButton) {
        // 演算子を表示するラベルを更新
        enzanLabel.text = "✕"
        // 演算子が押されたので左辺が確定 → 左辺用の変数に現在表示されているラベルを代入
        leftNum = vLabel.text!.toInt()!
        // 押したボタンを表示するラベルを「0」にする
        vLabel.text = "0"
        // 演算の種類を「0」とする
        enzanKind = 2
    }
    // ↑↑↑プラスボタン押下
    
    // ↓↓↓プラスボタン押下
    @IBAction func tapWaru(sender: UIButton) {
        // 演算子を表示するラベルを更新
        enzanLabel.text = "➗"
        // 演算子が押されたので左辺が確定 → 左辺用の変数に現在表示されているラベルを代入
        leftNum = vLabel.text!.toInt()!
        // 押したボタンを表示するラベルを「0」にする
        vLabel.text = "0"
        // 演算の種類を「0」とする
        enzanKind = 3
    }
    // ↑↑↑プラスボタン押下
    
    // ↓↓↓イコールボタン押下
    @IBAction func tapEquals(sender: UIButton) {
        // 今表示されている数字を右辺用の変数にラベルを代入
        rightNum = vLabel.text!.toInt()!
        
        // 押された演算子によって処理が分岐する
        if enzanKind == 0 {
            // 加算の場合
            vLabel.text = String(leftNum + rightNum)
        } else if enzanKind == 1 {
            // 減算の場合
            vLabel.text = String(leftNum - rightNum)
        } else if enzanKind == 2 {
            // 掛け算の場合
            vLabel.text = String(leftNum * rightNum)
        } else if enzanKind == 3 {
            // 割り算の場合
            vLabel.text = String(leftNum / rightNum)
        } else {
            // 上記以外の場合
            vLabel.text = "0"
        }
        
        // 演算子をクリア
        enzanLabel.text = ""
        // 再計算ON
        reCalc = 1
        // 左右を初期化
        leftNum = 0
        rightNum = 0
    }
    // ↑↑↑イコールボタン押下
    
}
