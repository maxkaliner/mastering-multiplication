//
//  MultiplicationPractice.swift
//  10 Days to Multiply
//
//  Created by Max Kaliner on 8/19/16.
//  Copyright © 2016 Max Kaliner. All rights reserved.
//

import UIKit
import CoreData
import Canvas

class MultiplicationPractice: UIViewController {
    
    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var answerText: UITextField!
    @IBOutlet weak var answerCheck: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var animView: CSAnimationView!
    @IBOutlet weak var animView2: CSAnimationView!
    @IBOutlet weak var masteredPercent: UILabel!
    
    var firstNumbers:Int = 0
    var secondNumbers:Int = 0
    var constant:Int = 0
    var doBringBack = false
    
    var mastery0:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery1:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery2:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery3:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery4:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery5:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery6:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery7:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery8:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery9:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery10:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var mastery11:[Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var attribute0 = 0
    var attribute1 = 0
    var attribute2 = 0
    var attribute3 = 0
    var attribute4 = 0
    var attribute5 = 0
    var attribute6 = 0
    var attribute7 = 0
    var attribute8 = 0
    var attribute9 = 0
    var attribute10 = 0
    var attribute11 = 0
    var firstNumberss = ""
    var secondNumberss = ""
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let mastery = UserDefaults.standard
        self.continueButton.isHidden = true
        self.answerButton.isHidden = false
        self.answerText.text = ""
        self.answerCheck.text = ""
        
        if (mastery.value(forKey: "masterynum1_\(constant)")) != nil && doBringBack==true {
            firstNumberss = mastery.value(forKey: "masterynum1_\(constant)") as! String
            self.firstNumber.text = firstNumberss
            firstNumbers = Int(firstNumberss)!
            secondNumberss = mastery.value(forKey: "masterynum2_\(constant)") as! String
            self.secondNumber.text = secondNumberss
            secondNumbers = Int(secondNumberss)!
            doBringBack = false
            print(firstNumberss)
            print(secondNumberss)
        }
        else {
        
        let chooser:Int = Int(arc4random_uniform(5))
        
        
        if chooser == 0 {
            if constant == 11 {
                firstNumbers = Int(arc4random_uniform(11))
                firstNumberss = String(firstNumbers)
                self.firstNumber.text = firstNumberss
                
                secondNumbers = Int(arc4random_uniform(11))
                secondNumberss = String(secondNumbers)
                self.secondNumber.text = secondNumberss
            }
            else {
                firstNumbers = Int(arc4random_uniform(11))
                firstNumberss = String(firstNumbers)
                self.firstNumber.text = firstNumberss
                
                secondNumbers = constant
                secondNumberss = String(secondNumbers)
                self.secondNumber.text = "\(constant)"
            }
            
            
            
            
        }
        else {
            if constant == 11 {
                firstNumbers = Int(arc4random_uniform(11))
                firstNumberss = String(firstNumbers)
                self.firstNumber.text = firstNumberss
                
                secondNumbers = Int(arc4random_uniform(11))
                secondNumberss = String(secondNumbers)
                self.secondNumber.text = secondNumberss
            }
            else {
                firstNumbers = constant
                self.firstNumber.text = "\(constant)"
                firstNumberss = String(firstNumbers)
                
                secondNumbers = Int(arc4random_uniform(11))
                secondNumberss = String(secondNumbers)
                self.secondNumber.text = secondNumberss
            }
            
            
        }
        }
        var masterynumsel = "mastery\(constant)"
        
        if (mastery.value(forKey: "mastery\(constant)")) != nil {
            let masterynumsel = mastery.value(forKey: "mastery\(constant)") as! [Int]
            let masterynumseltext = String(masterynumsel.reduce(0, +) / Int(masterynumsel.count))
            self.masteredPercent.text = "\(masterynumseltext)%"
        }
        
        /*
        // Choose a random number from 1-10 for the first factor.
        var firstNumbers:Int = Int(arc4random_uniform(11))
        var firstNumberss = String(firstNumbers)
        self.firstNumber.text = firstNumberss
        
        // If the first factor is not zero, the second factor will be.
        if firstNumbers != 0 {
            var secondNumbers:Int = 0
            self.secondNumber.text = "0"
        }
        // If the first factor is zero, choose a random number for the second factor.
        else {
            var secondNumbers:Int = Int(arc4random_uniform(11))
            var secondNumberss = String(secondNumbers)
            self.secondNumber.text = secondNumberss
            
        }*/
        
        // Do any additional setup after loading the view.

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let mastery = UserDefaults.standard
        if constant == 0 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_0")
            mastery.setValue(secondNumberss, forKey: "masterynum2_0")
            mastery.synchronize()
        }
        else if constant == 1 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_1")
            mastery.setValue(secondNumberss, forKey: "masterynum2_1")
            mastery.synchronize()
        }
        else if constant == 2 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_2")
            mastery.setValue(secondNumberss, forKey: "masterynum2_2")
            mastery.synchronize()
        }
        else if constant == 3 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_3")
            mastery.setValue(secondNumberss, forKey: "masterynum2_3")
            mastery.synchronize()
        }
        else if constant == 4 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_4")
            mastery.setValue(secondNumberss, forKey: "masterynum2_4")
            mastery.synchronize()
        }
        else if constant == 5 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_5")
            mastery.setValue(secondNumberss, forKey: "masterynum2_5")
            mastery.synchronize()
        }
        else if constant == 6 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_6")
            mastery.setValue(secondNumberss, forKey: "masterynum2_6")
            mastery.synchronize()
        }
        else if constant == 7 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_7")
            mastery.setValue(secondNumberss, forKey: "masterynum2_7")
            mastery.synchronize()
        }
        else if constant == 8 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_8")
            mastery.setValue(secondNumberss, forKey: "masterynum2_8")
            mastery.synchronize()
        }
        else if constant == 9 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_9")
            mastery.setValue(secondNumberss, forKey: "masterynum2_9")
            mastery.synchronize()
        }
        else if constant == 10 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_10")
            mastery.setValue(secondNumberss, forKey: "masterynum2_10")
            mastery.synchronize()
        }
        else if constant == 11 {
            mastery.setValue(firstNumberss, forKey: "masterynum1_11")
            mastery.setValue(secondNumberss, forKey: "masterynum2_11")
            mastery.synchronize()
        }
        doBringBack = true
        
        
    }

    @IBAction func answerCheckButton(_ sender: AnyObject) {
        let mastery = UserDefaults.standard
        // Check answer upon return.
        let product:Int = firstNumbers*secondNumbers
        let supProduct:Int? = Int(answerText.text!)
        if answerText.text == "" {
            self.answerCheck.text = "Please enter an answer."
        }
        else if product == supProduct {
            self.answerCheck.text = "Correct! Great Job!"
            animView2.startCanvasAnimation()
            //self.answerContinueButton.setTitle("Continue", forState: .Normal)
            self.answerButton.isHidden = true
            self.continueButton.isHidden = false
            
            // Save CoreData.
            if constant == 0 {
                if (mastery.value(forKey: "attribute0") != nil) {
                    attribute0 = mastery.value(forKey: "attribute0") as! Int
                }
                if (mastery.value(forKey: "mastery0") != nil) {
                    mastery0 = mastery.value(forKey: "mastery0") as! [Int]
                }
                mastery0[attribute0] = 100
                attribute0 += 1
                if attribute0 == 50 {
                    attribute0 = 0
                }
                mastery.setValue(attribute0, forKey: "attribute0")
                mastery.setValue(mastery0, forKey: "mastery0")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery0 = mastery.value(forKey: "mastery0") as! [Int]
                    let mastery0text = String(mastery0.reduce(0, +) / Int(mastery0.count))
                    self.masteredPercent.text = "\(mastery0text)%"
                }
                
                let mastery0t = mastery0.reduce(0, +) / Int(mastery0.count)
                if mastery0t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 1 {
                if (mastery.value(forKey: "attribute1") != nil) {
                    attribute1 = mastery.value(forKey: "attribute1") as! Int
                }
                if (mastery.value(forKey: "mastery1") != nil) {
                    mastery1 = mastery.value(forKey: "mastery1") as! [Int]
                }
                mastery1[attribute1] = 100
                attribute1 += 1
                if attribute1 == 50 {
                    attribute1 = 0
                }
                mastery.setValue(attribute1, forKey: "attribute1")
                mastery.setValue(mastery1, forKey: "mastery1")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery1 = mastery.value(forKey: "mastery1") as! [Int]
                    let mastery1text = String(mastery1.reduce(0, +) / Int(mastery1.count))
                    self.masteredPercent.text = "\(mastery1text)%"
                }
                
                let mastery1t = mastery1.reduce(0, +) / Int(mastery1.count)
                if mastery1t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 2 {
                if (mastery.value(forKey: "attribute2") != nil) {
                    attribute1 = mastery.value(forKey: "attribute2") as! Int
                }
                if (mastery.value(forKey: "mastery2") != nil) {
                    mastery2 = mastery.value(forKey: "mastery2") as! [Int]
                }
                mastery2[attribute2] = 100
                attribute2 += 1
                if attribute2 == 50 {
                    attribute2 = 0
                }
                mastery.setValue(attribute2, forKey: "attribute2")
                mastery.setValue(mastery2, forKey: "mastery2")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery2 = mastery.value(forKey: "mastery2") as! [Int]
                    let mastery2text = String(mastery2.reduce(0, +) / Int(mastery2.count))
                    self.masteredPercent.text = "\(mastery2text)%"
                }
                
                let mastery2t = mastery2.reduce(0, +) / Int(mastery2.count)
                if mastery2t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 3 {
                if (mastery.value(forKey: "attribute3") != nil) {
                    attribute0 = mastery.value(forKey: "attribute3") as! Int
                }
                if (mastery.value(forKey: "mastery3") != nil) {
                    mastery3 = mastery.value(forKey: "mastery3") as! [Int]
                }
                mastery3[attribute3] = 100
                attribute3 += 1
                if attribute3 == 50 {
                    attribute3 = 0
                }
                mastery.setValue(attribute3, forKey: "attribute3")
                mastery.setValue(mastery3, forKey: "mastery3")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery3 = mastery.value(forKey: "mastery3") as! [Int]
                    let mastery3text = String(mastery3.reduce(0, +) / Int(mastery3.count))
                    self.masteredPercent.text = "\(mastery3text)%"
                }
                
                let mastery3t = mastery3.reduce(0, +) / Int(mastery3.count)
                if mastery3t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 4 {
                if (mastery.value(forKey: "attribute4") != nil) {
                    attribute4 = mastery.value(forKey: "attribute4") as! Int
                }
                if (mastery.value(forKey: "mastery4") != nil) {
                    mastery4 = mastery.value(forKey: "mastery4") as! [Int]
                }
                mastery4[attribute4] = 100
                attribute4 += 1
                if attribute4 == 50 {
                    attribute4 = 0
                }
                mastery.setValue(attribute4, forKey: "attribute4")
                mastery.setValue(mastery4, forKey: "mastery4")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery4 = mastery.value(forKey: "mastery4") as! [Int]
                    let mastery4text = String(mastery4.reduce(0, +) / Int(mastery4.count))
                    self.masteredPercent.text = "\(mastery4text)%"
                }
                
                let mastery4t = mastery4.reduce(0, +) / Int(mastery4.count)
                if mastery4t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 5 {
                if (mastery.value(forKey: "attribute5") != nil) {
                    attribute5 = mastery.value(forKey: "attribute5") as! Int
                }
                if (mastery.value(forKey: "mastery5") != nil) {
                    mastery5 = mastery.value(forKey: "mastery5") as! [Int]
                }
                mastery5[attribute5] = 100
                attribute5 += 1
                if attribute5 == 50 {
                    attribute5 = 0
                }
                mastery.setValue(attribute5, forKey: "attribute5")
                mastery.setValue(mastery5, forKey: "mastery5")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery5 = mastery.value(forKey: "mastery5") as! [Int]
                    let mastery5text = String(mastery5.reduce(0, +) / Int(mastery5.count))
                    self.masteredPercent.text = "\(mastery5text)%"
                }
                
                let mastery5t = mastery5.reduce(0, +) / Int(mastery5.count)
                if mastery5t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 6 {
                if (mastery.value(forKey: "attribute6") != nil) {
                    attribute6 = mastery.value(forKey: "attribute6") as! Int
                }
                if (mastery.value(forKey: "mastery6") != nil) {
                    mastery6 = mastery.value(forKey: "mastery6") as! [Int]
                }
                mastery6[attribute6] = 100
                attribute6 += 1
                if attribute6 == 50 {
                    attribute6 = 0
                }
                mastery.setValue(attribute6, forKey: "attribute6")
                mastery.setValue(mastery6, forKey: "mastery6")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery6 = mastery.value(forKey: "mastery6") as! [Int]
                    let mastery6text = String(mastery6.reduce(0, +) / Int(mastery6.count))
                    self.masteredPercent.text = "\(mastery6text)%"
                }
                
                let mastery6t = mastery6.reduce(0, +) / Int(mastery6.count)
                if mastery6t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 7 {
                if (mastery.value(forKey: "attribute7") != nil) {
                    attribute7 = mastery.value(forKey: "attribute7") as! Int
                }
                if (mastery.value(forKey: "mastery7") != nil) {
                    mastery7 = mastery.value(forKey: "mastery7") as! [Int]
                }
                mastery7[attribute7] = 100
                attribute7 += 1
                if attribute7 == 50 {
                    attribute7 = 0
                }
                mastery.setValue(attribute7, forKey: "attribute7")
                mastery.setValue(mastery7, forKey: "mastery7")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery7 = mastery.value(forKey: "mastery7") as! [Int]
                    let mastery7text = String(mastery7.reduce(0, +) / Int(mastery7.count))
                    self.masteredPercent.text = "\(mastery7text)%"
                }
                
                let mastery7t = mastery7.reduce(0, +) / Int(mastery7.count)
                if mastery7t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 8 {
                if (mastery.value(forKey: "attribute8") != nil) {
                    attribute8 = mastery.value(forKey: "attribute8") as! Int
                }
                if (mastery.value(forKey: "mastery8") != nil) {
                    mastery8 = mastery.value(forKey: "mastery8") as! [Int]
                }
                mastery8[attribute8] = 100
                attribute8 += 1
                if attribute8 == 50 {
                    attribute8 = 0
                }
                mastery.setValue(attribute8, forKey: "attribute8")
                mastery.setValue(mastery8, forKey: "mastery8")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery8 = mastery.value(forKey: "mastery8") as! [Int]
                    let mastery8text = String(mastery8.reduce(0, +) / Int(mastery8.count))
                    self.masteredPercent.text = "\(mastery8text)%"
                }
                
                let mastery8t = mastery8.reduce(0, +) / Int(mastery8.count)
                if mastery8t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 9 {
                if (mastery.value(forKey: "attribute9") != nil) {
                    attribute9 = mastery.value(forKey: "attribute9") as! Int
                }
                if (mastery.value(forKey: "mastery9") != nil) {
                    mastery9 = mastery.value(forKey: "mastery9") as! [Int]
                }
                mastery9[attribute9] = 100
                attribute9 += 1
                if attribute9 == 50 {
                    attribute9 = 0
                }
                mastery.setValue(attribute9, forKey: "attribute9")
                mastery.setValue(mastery9, forKey: "mastery9")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery9 = mastery.value(forKey: "mastery9") as! [Int]
                    let mastery9text = String(mastery9.reduce(0, +) / Int(mastery9.count))
                    self.masteredPercent.text = "\(mastery9text)%"
                }
                
                let mastery9t = mastery9.reduce(0, +) / Int(mastery9.count)
                if mastery9t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 10 {
                if (mastery.value(forKey: "attribute10") != nil) {
                    attribute10 = mastery.value(forKey: "attribute10") as! Int
                }
                if (mastery.value(forKey: "mastery10") != nil) {
                    mastery10 = mastery.value(forKey: "mastery10") as! [Int]
                }
                mastery10[attribute10] = 100
                attribute10 += 1
                if attribute10 == 50 {
                    attribute10 = 0
                }
                mastery.setValue(attribute10, forKey: "attribute10")
                mastery.setValue(mastery10, forKey: "mastery10")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery10 = mastery.value(forKey: "mastery10") as! [Int]
                    let mastery10text = String(mastery10.reduce(0, +) / Int(mastery10.count))
                    self.masteredPercent.text = "\(mastery10text)%"
                }
                
                let mastery10t = mastery10.reduce(0, +) / Int(mastery10.count)
                if mastery10t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else {
                if (mastery.value(forKey: "attribute11") != nil) {
                    attribute11 = mastery.value(forKey: "attribute11") as! Int
                }
                if (mastery.value(forKey: "mastery11") != nil) {
                    mastery11 = mastery.value(forKey: "mastery11") as! [Int]
                }
                mastery11[attribute11] = 100
                attribute11 += 1
                if attribute11 == 50 {
                    attribute11 = 0
                }
                mastery.setValue(attribute11, forKey: "attribute11")
                mastery.setValue(mastery11, forKey: "mastery11")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery11 = mastery.value(forKey: "mastery11") as! [Int]
                    let mastery11text = String(mastery11.reduce(0, +) / Int(mastery11.count))
                    self.masteredPercent.text = "\(mastery11text)%"
                }
                
                let mastery11t = mastery11.reduce(0, +) / Int(mastery11.count)
                if mastery11t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication", message: "You have mastered multiplication!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            
            
            mastery.synchronize()
            
        }
        else {
            self.answerCheck.text = "Incorrect. Try Again!"
            animView.startCanvasAnimation()
            // Save CoreData.
            if constant == 0 {
                if (mastery.value(forKey: "attribute0") != nil) {
                    attribute0 = mastery.value(forKey: "attribute0") as! Int
                }
                if (mastery.value(forKey: "mastery0") != nil) {
                    mastery0 = mastery.value(forKey: "mastery0") as! [Int]
                }
                mastery0[attribute0] = 0
                attribute0 += 1
                if attribute0 == 11 {
                    attribute0 = 0
                }
                mastery.setValue(attribute0, forKey: "attribute0")
                mastery.setValue(mastery0, forKey: "mastery0")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery0 = mastery.value(forKey: "mastery0") as! [Int]
                    let mastery0text = String(mastery0.reduce(0, +) / Int(mastery0.count))
                    self.masteredPercent.text = "\(mastery0text)%"
                }
                
                let mastery0t = mastery0.reduce(0, +) / Int(mastery0.count)
                if mastery0t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 1 {
                if (mastery.value(forKey: "attribute1") != nil) {
                    attribute1 = mastery.value(forKey: "attribute1") as! Int
                }
                if (mastery.value(forKey: "mastery1") != nil) {
                    mastery1 = mastery.value(forKey: "mastery1") as! [Int]
                }
                mastery1[attribute1] = 0
                attribute1 += 1
                if attribute1 == 11 {
                    attribute1 = 0
                }
                mastery.setValue(attribute1, forKey: "attribute1")
                mastery.setValue(mastery1, forKey: "mastery1")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery1 = mastery.value(forKey: "mastery1") as! [Int]
                    let mastery1text = String(mastery1.reduce(0, +) / Int(mastery1.count))
                    self.masteredPercent.text = "\(mastery1text)%"
                }
                
                let mastery1t = mastery1.reduce(0, +) / Int(mastery1.count)
                if mastery1t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 2 {
                if (mastery.value(forKey: "attribute2") != nil) {
                    attribute2 = mastery.value(forKey: "attribute2") as! Int
                }
                if (mastery.value(forKey: "mastery2") != nil) {
                    mastery2 = mastery.value(forKey: "mastery2") as! [Int]
                }
                mastery2[attribute2] = 0
                attribute2 += 1
                if attribute2 == 11 {
                    attribute2 = 0
                }
                mastery.setValue(attribute2, forKey: "attribute2")
                mastery.setValue(mastery2, forKey: "mastery2")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery2 = mastery.value(forKey: "mastery2") as! [Int]
                    let mastery2text = String(mastery2.reduce(0, +) / Int(mastery2.count))
                    self.masteredPercent.text = "\(mastery2text)%"
                }
                
                let mastery2t = mastery2.reduce(0, +) / Int(mastery2.count)
                if mastery2t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 3 {
                if (mastery.value(forKey: "attribute3") != nil) {
                    attribute3 = mastery.value(forKey: "attribute3") as! Int
                }
                if (mastery.value(forKey: "mastery3") != nil) {
                    mastery3 = mastery.value(forKey: "mastery3") as! [Int]
                }
                mastery3[attribute3] = 0
                attribute3 += 1
                if attribute3 == 11 {
                    attribute3 = 0
                }
                mastery.setValue(attribute3, forKey: "attribute3")
                mastery.setValue(mastery3, forKey: "mastery3")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery3 = mastery.value(forKey: "mastery3") as! [Int]
                    let mastery3text = String(mastery3.reduce(0, +) / Int(mastery3.count))
                    self.masteredPercent.text = "\(mastery3text)%"
                }
                
                let mastery3t = mastery3.reduce(0, +) / Int(mastery3.count)
                if mastery3t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 4 {
                if (mastery.value(forKey: "attribute4") != nil) {
                    attribute4 = mastery.value(forKey: "attribute4") as! Int
                }
                if (mastery.value(forKey: "mastery4") != nil) {
                    mastery4 = mastery.value(forKey: "mastery4") as! [Int]
                }
                mastery4[attribute4] = 0
                attribute4 += 1
                if attribute4 == 11 {
                    attribute4 = 0
                }
                mastery.setValue(attribute4, forKey: "attribute4")
                mastery.setValue(mastery4, forKey: "mastery4")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery4 = mastery.value(forKey: "mastery4") as! [Int]
                    let mastery4text = String(mastery4.reduce(0, +) / Int(mastery4.count))
                    self.masteredPercent.text = "\(mastery4text)%"
                }
                
                let mastery4t = mastery4.reduce(0, +) / Int(mastery4.count)
                if mastery4t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 5 {
                if (mastery.value(forKey: "attribute5") != nil) {
                    attribute5 = mastery.value(forKey: "attribute5") as! Int
                }
                if (mastery.value(forKey: "mastery5") != nil) {
                    mastery5 = mastery.value(forKey: "mastery5") as! [Int]
                }
                mastery5[attribute5] = 0
                attribute5 += 1
                if attribute5 == 11 {
                    attribute5 = 0
                }
                mastery.setValue(attribute5, forKey: "attribute5")
                mastery.setValue(mastery5, forKey: "mastery5")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery5 = mastery.value(forKey: "mastery5") as! [Int]
                    let mastery5text = String(mastery5.reduce(0, +) / Int(mastery5.count))
                    self.masteredPercent.text = "\(mastery5text)%"
                }
                
                let mastery5t = mastery5.reduce(0, +) / Int(mastery5.count)
                if mastery5t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 6 {
                if (mastery.value(forKey: "attribute6") != nil) {
                    attribute6 = mastery.value(forKey: "attribute6") as! Int
                }
                if (mastery.value(forKey: "mastery6") != nil) {
                    mastery6 = mastery.value(forKey: "mastery6") as! [Int]
                }
                mastery6[attribute6] = 0
                attribute6 += 1
                if attribute6 == 11 {
                    attribute6 = 0
                }
                mastery.setValue(attribute6, forKey: "attribute6")
                mastery.setValue(mastery6, forKey: "mastery6")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery6 = mastery.value(forKey: "mastery6") as! [Int]
                    let mastery6text = String(mastery6.reduce(0, +) / Int(mastery6.count))
                    self.masteredPercent.text = "\(mastery6text)%"
                }
                
                let mastery6t = mastery6.reduce(0, +) / Int(mastery6.count)
                if mastery6t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 7 {
                if (mastery.value(forKey: "attribute7") != nil) {
                    attribute7 = mastery.value(forKey: "attribute7") as! Int
                }
                if (mastery.value(forKey: "mastery7") != nil) {
                    mastery7 = mastery.value(forKey: "mastery7") as! [Int]
                }
                mastery7[attribute7] = 0
                attribute7 += 1
                if attribute7 == 11 {
                    attribute7 = 0
                }
                mastery.setValue(attribute7, forKey: "attribute7")
                mastery.setValue(mastery7, forKey: "mastery7")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery7 = mastery.value(forKey: "mastery7") as! [Int]
                    let mastery7text = String(mastery7.reduce(0, +) / Int(mastery7.count))
                    self.masteredPercent.text = "\(mastery7text)%"
                }
                
                let mastery7t = mastery7.reduce(0, +) / Int(mastery7.count)
                if mastery7t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 8 {
                if (mastery.value(forKey: "attribute8") != nil) {
                    attribute8 = mastery.value(forKey: "attribute8") as! Int
                }
                if (mastery.value(forKey: "mastery8") != nil) {
                    mastery8 = mastery.value(forKey: "mastery8") as! [Int]
                }
                mastery8[attribute8] = 0
                attribute8 += 1
                if attribute8 == 11 {
                    attribute8 = 0
                }
                mastery.setValue(attribute8, forKey: "attribute8")
                mastery.setValue(mastery8, forKey: "mastery8")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery8 = mastery.value(forKey: "mastery8") as! [Int]
                    let mastery8text = String(mastery8.reduce(0, +) / Int(mastery8.count))
                    self.masteredPercent.text = "\(mastery8text)%"
                }
                
                let mastery8t = mastery8.reduce(0, +) / Int(mastery8.count)
                if mastery8t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 9 {
                if (mastery.value(forKey: "attribute9") != nil) {
                    attribute9 = mastery.value(forKey: "attribute9") as! Int
                }
                if (mastery.value(forKey: "mastery9") != nil) {
                    mastery9 = mastery.value(forKey: "mastery9") as! [Int]
                }
                mastery9[attribute9] = 0
                attribute9 += 1
                if attribute9 == 11 {
                    attribute9 = 0
                }
                mastery.setValue(attribute9, forKey: "attribute9")
                mastery.setValue(mastery9, forKey: "mastery9")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery9 = mastery.value(forKey: "mastery9") as! [Int]
                    let mastery9text = String(mastery9.reduce(0, +) / Int(mastery9.count))
                    self.masteredPercent.text = "\(mastery9text)%"
                }
                
                let mastery9t = mastery9.reduce(0, +) / Int(mastery9.count)
                if mastery9t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else if constant == 10 {
                if (mastery.value(forKey: "attribute10") != nil) {
                    attribute10 = mastery.value(forKey: "attribute10") as! Int
                }
                if (mastery.value(forKey: "mastery10") != nil) {
                    mastery10 = mastery.value(forKey: "mastery10") as! [Int]
                }
                mastery10[attribute10] = 0
                attribute10 += 1
                if attribute10 == 11 {
                    attribute10 = 0
                }
                mastery.setValue(attribute10, forKey: "attribute10")
                mastery.setValue(mastery10, forKey: "mastery10")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery10 = mastery.value(forKey: "mastery10") as! [Int]
                    let mastery10text = String(mastery10.reduce(0, +) / Int(mastery10.count))
                    self.masteredPercent.text = "\(mastery10text)%"
                }
                
                let mastery10t = mastery10.reduce(0, +) / Int(mastery10.count)
                if mastery10t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
                
            else {
                if (mastery.value(forKey: "attribute11") != nil) {
                    attribute11 = mastery.value(forKey: "attribute11") as! Int
                }
                if (mastery.value(forKey: "mastery11") != nil) {
                    mastery11 = mastery.value(forKey: "mastery11") as! [Int]
                }
                mastery11[attribute11] = 0
                attribute11 += 1
                if attribute11 == 11 {
                    attribute11 = 0
                }
                mastery.setValue(attribute11, forKey: "attribute11")
                mastery.setValue(mastery11, forKey: "mastery11")
                
                if (mastery.value(forKey: "mastery\(constant)")) != nil {
                    let mastery11 = mastery.value(forKey: "mastery11") as! [Int]
                    let mastery11text = String(mastery11.reduce(0, +) / Int(mastery11.count))
                    self.masteredPercent.text = "\(mastery11text)%"
                }
                
                let mastery11t = mastery11.reduce(0, +) / Int(mastery11.count)
                if mastery11t == 100 {
                    let alert = UIAlertController(title: "Mastered Multiplication by \(constant)", message: "You have mastered multiplication by \(constant)!", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
            
            
            mastery.synchronize()
            
        }
        
        

    }
    
       
    @IBAction func resetView(_ sender: AnyObject) {
        self.viewDidLoad()
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, one will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
