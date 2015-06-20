//
//  AppDelegate.swift
//  calculator
//
//  Created by 高橋健太 on 2015/06/14.
//  Copyright (c) 2015年 高橋健太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var vLabel: UILabel!
    @IBOutlet weak var enzanLabel: UILabel!
    
    var enzanKind = -1
    var leftNum = 0
    var rightNum = 0
    var reCalc = 0
    
    //yaaa
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
       
        vLabel.text = "0"
        enzanLabel.text = ""
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    

    @IBAction func reset(sender: UIButton) {
       
        vLabel.text = "0"
               enzanLabel.text = ""
    }
  
    @IBAction func tap1(sender: UIButton) {
        
        if vLabel.text == "0" {
            vLabel.text = "1"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "1"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "1"
        }
    }
   
    @IBAction func tap2(sender: UIButton) {
        
        if vLabel.text == "0" {
         
            vLabel.text = "2"
            
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "2"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "2"
        }
    }

    @IBAction func tap3(sender: UIButton) {
        if vLabel.text == "0" {
            vLabel.text = "3"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "3"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "3"
        }
    }

    @IBAction func tap4(sender: UIButton) {
             if vLabel.text == "0" {
           
            vLabel.text = "4"
           
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "4"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "4"
        }
    }
    @IBAction func tap5(sender: UIButton) {
       if vLabel.text == "0" {
            vLabel.text = "5"
        
            reCalc = 0
        } else if reCalc == 1 {
        
            vLabel.text = "5"
        
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "5"
        }
    }

    @IBAction func tap6(sender: UIButton) {
        
        if vLabel.text == "0" {
            vLabel.text = "6"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "6"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "6"
        }
    }
    @IBAction func tap7(sender: UIButton) {
       
        if vLabel.text == "0" {
            vLabel.text = "7"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "7"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "7"
        }
    }
    @IBAction func tap8(sender: UIButton) {
        if vLabel.text == "0" {
              vLabel.text = "8"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "8"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "8"
        }
    }
    @IBAction func tap9(sender: UIButton) {
        if vLabel.text == "0" {
            vLabel.text = "9"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "9"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "9"
        }
    }
    @IBAction func tap0(sender: UIButton) {
        if vLabel.text == "0" {
            vLabel.text = "0"
            reCalc = 0
        } else if reCalc == 1 {
            vLabel.text = "0"
            reCalc = 0
        } else {
            vLabel.text = vLabel.text! + "0"
        }
    }
    @IBAction func tapPlus(sender: UIButton) {
        enzanLabel.text = "➕"
        leftNum = vLabel.text!.toInt()!
        vLabel.text = "0"
        enzanKind = 0
    }
    @IBAction func tapMinus(sender: UIButton) {
        enzanLabel.text = "➖"
        leftNum = vLabel.text!.toInt()!
        vLabel.text = "0"
        enzanKind = 1
    }
    
    @IBAction func tapKakeru(sender: UIButton) {
        enzanLabel.text = "✕"
        leftNum = vLabel.text!.toInt()!
        vLabel.text = "0"
        enzanKind = 2
    }
  
    @IBAction func tapWaru(sender: UIButton) {
        enzanLabel.text = "➗"
        leftNum = vLabel.text!.toInt()!
        vLabel.text = "0"
        enzanKind = 3
    }
    @IBAction func tapEquals(sender: UIButton) {
        rightNum = vLabel.text!.toInt()!
        if enzanKind == 0 {
            vLabel.text = String(leftNum + rightNum)
        } else if enzanKind == 1 {
            vLabel.text = String(leftNum - rightNum)
        } else if enzanKind == 2 {
            vLabel.text = String(leftNum * rightNum)
        } else if enzanKind == 3 {
            vLabel.text = String(leftNum / rightNum)
        } else {
            vLabel.text = "0"
        }
    
        enzanLabel.text = ""
        reCalc = 1
        leftNum = 0
        rightNum = 0
    }
    
}
