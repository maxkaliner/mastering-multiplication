//
//  MultiplyByTable.swift
//  10 Days to Multiply
//
//  Created by Ma× Kaliner on 8/20/16.
//  Copyright © 2016 Ma× Kaliner. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class MultiplyByTable: UIViewController {
    
    @IBOutlet weak var mastered0: UILabel!
    @IBOutlet weak var mastered1: UILabel!
    @IBOutlet weak var mastered2: UILabel!
    @IBOutlet weak var mastered3: UILabel!
    @IBOutlet weak var mastered4: UILabel!
    @IBOutlet weak var mastered5: UILabel!
    @IBOutlet weak var mastered6: UILabel!
    @IBOutlet weak var mastered7: UILabel!
    @IBOutlet weak var mastered8: UILabel!
    @IBOutlet weak var mastered9: UILabel!
    @IBOutlet weak var mastered10: UILabel!
    @IBOutlet weak var mastered11: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        let mastery = UserDefaults.standard
        if (mastery.value(forKey: "mastery0")) != nil {
            let mastery0 = mastery.value(forKey: "mastery0") as! [Int]
            let mastery0text = String(mastery0.reduce(0, +) / Int(mastery0.count))
            self.mastered0.text = "\(mastery0text)%"
        }
        if (mastery.value(forKey: "mastery1")) != nil {
            let mastery1 = mastery.value(forKey: "mastery1") as! [Int]
            let mastery1text = String(mastery1.reduce(0, +) / Int(mastery1.count))
            self.mastered1.text = "\(mastery1text)%"
        }
        if (mastery.value(forKey: "mastery2")) != nil {
            let mastery2 = mastery.value(forKey: "mastery2") as! [Int]
            let mastery2text = String(mastery2.reduce(0, +) / Int(mastery2.count))
            self.mastered2.text = "\(mastery2text)%"
        }
        if (mastery.value(forKey: "mastery3")) != nil {
            let mastery3 = mastery.value(forKey: "mastery3") as! [Int]
            let mastery3text = String(mastery3.reduce(0, +) / Int(mastery3.count))
            self.mastered3.text = "\(mastery3text)%"
        }
        if (mastery.value(forKey: "mastery4")) != nil {
            let mastery4 = mastery.value(forKey: "mastery4") as! [Int]
            let mastery4text = String(mastery4.reduce(0, +) / Int(mastery4.count))
            self.mastered4.text = "\(mastery4text)%"
        }
        if (mastery.value(forKey: "mastery5")) != nil {
            let mastery5 = mastery.value(forKey: "mastery5") as! [Int]
            let mastery5text = String(mastery5.reduce(0, +) / Int(mastery5.count))
            self.mastered5.text = "\(mastery5text)%"
        }
        if (mastery.value(forKey: "mastery6")) != nil {
            let mastery6 = mastery.value(forKey: "mastery6") as! [Int]
            let mastery6text = String(mastery6.reduce(0, +) / Int(mastery6.count))
            self.mastered6.text = "\(mastery6text)%"
        }
        if (mastery.value(forKey: "mastery7")) != nil {
            let mastery7 = mastery.value(forKey: "mastery7") as! [Int]
            let mastery7text = String(mastery7.reduce(0, +) / Int(mastery7.count))
            self.mastered7.text = "\(mastery7text)%"
        }
        if (mastery.value(forKey: "mastery8")) != nil {
            let mastery8 = mastery.value(forKey: "mastery0") as! [Int]
            let mastery8text = String(mastery8.reduce(0, +) / Int(mastery8.count))
            self.mastered8.text = "\(mastery8text)%"
        }
        if (mastery.value(forKey: "mastery9")) != nil {
            let mastery9 = mastery.value(forKey: "mastery9") as! [Int]
            let mastery9text = String(mastery9.reduce(0, +) / Int(mastery9.count))
            self.mastered9.text = "\(mastery9text)%"
        }
        if (mastery.value(forKey: "mastery10")) != nil {
            let mastery10 = mastery.value(forKey: "mastery10") as! [Int]
            let mastery10text = String(mastery10.reduce(0, +) / Int(mastery10.count))
            self.mastered10.text = "\(mastery10text)%"
        }
        if (mastery.value(forKey: "mastery11")) != nil {
            let mastery11 = mastery.value(forKey: "mastery11") as! [Int]
            let mastery11text = String(mastery11.reduce(0, +) / Int(mastery11.count))
            self.mastered11.text = "\(mastery11text)%"
        }

    }

    override func viewDidLoad() {
        

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "0" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×0=0"
            DestinationViewController.constanteq1 = "1×0=0"
            DestinationViewController.constanteq2 = "2×0=0"
            DestinationViewController.constanteq3 = "3×0=0"
            DestinationViewController.constanteq4 = "4×0=0"
            DestinationViewController.constanteq5 = "5×0=0"
            DestinationViewController.constanteq6 = "6×0=0"
            DestinationViewController.constanteq7 = "7×0=0"
            DestinationViewController.constanteq8 = "8×0=0"
            DestinationViewController.constanteq9 = "9×0=0"
            DestinationViewController.constanteq10 = "10×0=0"
            DestinationViewController.bool0 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "1" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×1=0"
            DestinationViewController.constanteq1 = "1×1=1"
            DestinationViewController.constanteq2 = "2×1=2"
            DestinationViewController.constanteq3 = "3×1=3"
            DestinationViewController.constanteq4 = "4×1=4"
            DestinationViewController.constanteq5 = "5×1=5"
            DestinationViewController.constanteq6 = "6×1=6"
            DestinationViewController.constanteq7 = "7×1=7"
            DestinationViewController.constanteq8 = "8×1=8"
            DestinationViewController.constanteq9 = "9×1=9"
            DestinationViewController.constanteq10 = "10×1=10"

            DestinationViewController.bool1 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "2" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×2=0"
            DestinationViewController.constanteq1 = "1×2=2"
            DestinationViewController.constanteq2 = "2×2=4"
            DestinationViewController.constanteq3 = "3×2=6"
            DestinationViewController.constanteq4 = "4×2=8"
            DestinationViewController.constanteq5 = "5×2=10"
            DestinationViewController.constanteq6 = "6×2=12"
            DestinationViewController.constanteq7 = "7×2=14"
            DestinationViewController.constanteq8 = "8×2=16"
            DestinationViewController.constanteq9 = "9×2=18"
            DestinationViewController.constanteq10 = "10×2=20"

            DestinationViewController.bool2 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "3" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×3=0"
            DestinationViewController.constanteq1 = "1×3=3"
            DestinationViewController.constanteq2 = "2×3=6"
            DestinationViewController.constanteq3 = "3×3=9"
            DestinationViewController.constanteq4 = "4×3=12"
            DestinationViewController.constanteq5 = "5×3=15"
            DestinationViewController.constanteq6 = "6×3=18"
            DestinationViewController.constanteq7 = "7×3=21"
            DestinationViewController.constanteq8 = "8×3=24"
            DestinationViewController.constanteq9 = "9×3=27"
            DestinationViewController.constanteq10 = "10×3=30"
            DestinationViewController.bool3 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "4" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×4=0"
            DestinationViewController.constanteq1 = "1×4=4"
            DestinationViewController.constanteq2 = "2×4=8"
            DestinationViewController.constanteq3 = "3×4=12"
            DestinationViewController.constanteq4 = "4×4=16"
            DestinationViewController.constanteq5 = "5×4=20"
            DestinationViewController.constanteq6 = "6×4=24"
            DestinationViewController.constanteq7 = "7×4=28"
            DestinationViewController.constanteq8 = "8×4=32"
            DestinationViewController.constanteq9 = "9×4=36"
            DestinationViewController.constanteq10 = "10×4=40"

            DestinationViewController.bool4 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "5" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×5=0"
            DestinationViewController.constanteq1 = "1×5=5"
            DestinationViewController.constanteq2 = "2×5=10"
            DestinationViewController.constanteq3 = "3×5=15"
            DestinationViewController.constanteq4 = "4×5=20"
            DestinationViewController.constanteq5 = "5×5=25"
            DestinationViewController.constanteq6 = "6×5=30"
            DestinationViewController.constanteq7 = "7×5=35"
            DestinationViewController.constanteq8 = "8×5=40"
            DestinationViewController.constanteq9 = "9×5=45"
            DestinationViewController.constanteq10 = "10×5=50"

            DestinationViewController.bool5 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "6" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×6=0"
            DestinationViewController.constanteq1 = "1×6=6"
            DestinationViewController.constanteq2 = "2×6=12"
            DestinationViewController.constanteq3 = "3×6=18"
            DestinationViewController.constanteq4 = "4×6=24"
            DestinationViewController.constanteq5 = "5×6=30"
            DestinationViewController.constanteq6 = "6×6=36"
            DestinationViewController.constanteq7 = "7×6=42"
            DestinationViewController.constanteq8 = "8×6=48"
            DestinationViewController.constanteq9 = "9×6=54"
            DestinationViewController.constanteq10 = "10×6=60"
            DestinationViewController.bool6 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "7" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×7=0"
            DestinationViewController.constanteq1 = "1×7=7"
            DestinationViewController.constanteq2 = "2×7=14"
            DestinationViewController.constanteq3 = "3×7=21"
            DestinationViewController.constanteq4 = "4×7=28"
            DestinationViewController.constanteq5 = "5×7=35"
            DestinationViewController.constanteq6 = "6×7=42"
            DestinationViewController.constanteq7 = "7×7=49"
            DestinationViewController.constanteq8 = "8×7=56"
            DestinationViewController.constanteq9 = "9×7=63"
            DestinationViewController.constanteq10 = "10×7=70"
            DestinationViewController.bool7 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "8" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×8=0"
            DestinationViewController.constanteq1 = "1×8=8"
            DestinationViewController.constanteq2 = "2×8=16"
            DestinationViewController.constanteq3 = "3×8=24"
            DestinationViewController.constanteq4 = "4×8=32"
            DestinationViewController.constanteq5 = "5×8=40"
            DestinationViewController.constanteq6 = "6×8=48"
            DestinationViewController.constanteq7 = "7×8=56"
            DestinationViewController.constanteq8 = "8×8=64"
            DestinationViewController.constanteq9 = "9×8=72"
            DestinationViewController.constanteq10 = "10×8=80"
            DestinationViewController.bool8 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "9" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×9=0"
            DestinationViewController.constanteq1 = "1×9=9"
            DestinationViewController.constanteq2 = "2×9=18"
            DestinationViewController.constanteq3 = "3×9=27"
            DestinationViewController.constanteq4 = "4×9=36"
            DestinationViewController.constanteq5 = "5×9=45"
            DestinationViewController.constanteq6 = "6×9=54"
            DestinationViewController.constanteq7 = "7×9=63"
            DestinationViewController.constanteq8 = "8×9=72"
            DestinationViewController.constanteq9 = "9×9=81"
            DestinationViewController.constanteq10 = "10×9=90"
            DestinationViewController.bool9 = false
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "10" {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×10=0"
            DestinationViewController.constanteq1 = "1×10=10"
            DestinationViewController.constanteq2 = "2×10=20"
            DestinationViewController.constanteq3 = "3×10=30"
            DestinationViewController.constanteq4 = "4×10=40"
            DestinationViewController.constanteq5 = "5×10=50"
            DestinationViewController.constanteq6 = "6×10=60"
            DestinationViewController.constanteq7 = "7×10=70"
            DestinationViewController.constanteq8 = "8×10=80"
            DestinationViewController.constanteq9 = "9×10=90"
            DestinationViewController.constanteq10 = "10×10=100"
            DestinationViewController.bool10 = false
            // Pass data to secondViewController before the transition
        }
        else {
            let DestinationViewController = segue.destination  as! FactorTutorial
            DestinationViewController.constanteq0 = "0×0=0"
            DestinationViewController.constanteq1 = "1×0=0"
            DestinationViewController.constanteq2 = "2×0=0"
            DestinationViewController.constanteq3 = "3×0=0"
            DestinationViewController.constanteq4 = "4×0=0"
            DestinationViewController.constanteq5 = "5×0=0"
            DestinationViewController.constanteq6 = "6×0=0"
            DestinationViewController.constanteq7 = "7×0=0"
            DestinationViewController.constanteq8 = "8×0=0"
            DestinationViewController.constanteq9 = "9×0=0"
            DestinationViewController.constanteq10 = "10×0=0"
            DestinationViewController.bool11 = false
            // Pass data to secondViewController before the transition
        }
    }
                    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
