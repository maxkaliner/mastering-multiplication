//
//  FactorTutorial.swift
//  10 Days to Multiply
//
//  Created by Max Kaliner on 8/20/16.
//  Copyright © 2016 Max Kaliner. All rights reserved.
//

import UIKit

class FactorTutorial: UIViewController {
    

    @IBOutlet weak var x0: UIButton!
    @IBOutlet weak var x1: UIButton!
    @IBOutlet weak var x2: UIButton!
    @IBOutlet weak var x3: UIButton!
    @IBOutlet weak var x4: UIButton!
    @IBOutlet weak var x5: UIButton!
    @IBOutlet weak var x6: UIButton!
    @IBOutlet weak var x7: UIButton!
    @IBOutlet weak var x8: UIButton!
    @IBOutlet weak var x9: UIButton!
    @IBOutlet weak var x10: UIButton!
    @IBOutlet weak var x11: UITextView!
    @IBOutlet weak var seeView: UIButton!
    
    @IBOutlet weak var by0: UIButton!
    @IBOutlet weak var by1: UIButton!
    @IBOutlet weak var by2: UIButton!
    @IBOutlet weak var by3: UIButton!
    @IBOutlet weak var by4: UIButton!
    @IBOutlet weak var by5: UIButton!
    @IBOutlet weak var by6: UIButton!
    @IBOutlet weak var by7: UIButton!
    @IBOutlet weak var by8: UIButton!
    @IBOutlet weak var by9: UIButton!
    @IBOutlet weak var by10: UIButton!
    @IBOutlet weak var by11: UIButton!
    
    

    var constanteq0 = ""
    var constanteq1 = ""
    var constanteq2 = ""
    var constanteq3 = ""
    var constanteq4 = ""
    var constanteq5 = ""
    var constanteq6 = ""
    var constanteq7 = ""
    var constanteq8 = ""
    var constanteq9 = ""
    var constanteq10 = ""
    var bool0 = true
    var bool1 = true
    var bool2 = true
    var bool3 = true
    var bool4 = true
    var bool5 = true
    var bool6 = true
    var bool7 = true
    var bool8 = true
    var bool9 = true
    var bool10 = true
    var bool11 = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.x0.setTitle("\(constanteq0)", for: UIControlState())
        self.x1.setTitle("\(constanteq1)", for: UIControlState())
        self.x2.setTitle("\(constanteq2)", for: UIControlState())
        self.x3.setTitle("\(constanteq3)", for: UIControlState())
        self.x4.setTitle("\(constanteq4)", for: UIControlState())
        self.x5.setTitle("\(constanteq5)", for: UIControlState())
        self.x6.setTitle("\(constanteq6)", for: UIControlState())
        self.x7.setTitle("\(constanteq7)", for: UIControlState())
        self.x8.setTitle("\(constanteq8)", for: UIControlState())
        self.x9.setTitle("\(constanteq9)", for: UIControlState())
        self.x10.setTitle("\(constanteq10)", for: UIControlState())
        
        self.by0.isHidden = bool0
        self.by1.isHidden = bool1
        self.by2.isHidden = bool2
        self.by3.isHidden = bool3
        self.by4.isHidden = bool4
        self.by5.isHidden = bool5
        self.by6.isHidden = bool6
        self.by7.isHidden = bool7
        self.by8.isHidden = bool8
        self.by9.isHidden = bool9
        self.by10.isHidden = bool10
        self.by11.isHidden = bool11
        
        if bool11 == false {
            self.x0.isHidden = true
            self.x1.isHidden = true
            self.x2.isHidden = true
            self.x3.isHidden = true
            self.x4.isHidden = true
            self.x5.isHidden = true
            self.x6.isHidden = true
            self.x7.isHidden = true
            self.x8.isHidden = true
            self.x9.isHidden = true
            self.x10.isHidden = true
            self.x11.isHidden = false
        }
        else {
            self.x11.isHidden = true
        }
        
        

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "0" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 0
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "1" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 1
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "2" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 2
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "3" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 3
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "4" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 4
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "5" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 5
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "6" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 6
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "7" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 7
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "8" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 8
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "9" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 9
            // Pass data to secondViewController before the transition
        }
        else if segue.identifier == "10" {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 10
            // Pass data to secondViewController before the transition
        }
        else {
            let DestinationViewController = segue.destination as! MultiplicationPractice
            DestinationViewController.constant = 11
            // Pass data to secondViewController before the transition
        }
    }
 
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func x0pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x0.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x0.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x1pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x1.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x1.backgroundColor
        self.seeView.isHidden = false
    }
    
    @IBAction func x2pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x2.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x2.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x3pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x3.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x3.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x4pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x4.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x4.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x5pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x5.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x5.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x6pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x6.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x6.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x7pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x7.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x7.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x8pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x8.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x8.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x9pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x9.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x9.backgroundColor
        self.seeView.isHidden = false
    }
    @IBAction func x10pressed(_ sender: AnyObject) {
        self.seeView.setTitle(x10.currentTitle, for: UIControlState())
        self.seeView.backgroundColor = x10.backgroundColor
        self.seeView.isHidden = false
    }
    
    @IBAction func seeViewPressed(_ sender: AnyObject) {
        self.seeView.isHidden = true
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
