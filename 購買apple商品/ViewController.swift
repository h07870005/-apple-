//
//  ViewController.swift
//  購買apple商品
//
//  Created by Huang Hao on 2017/8/13.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Item1TextField: UITextField!
    @IBOutlet weak var Item2TextField: UITextField!
    @IBOutlet weak var Item3TextField: UITextField!
    @IBOutlet weak var TotalTextField: UITextField!
    
    var Item1 : Int = 0
    var Item2 : Int = 0
    var Item3 : Int = 0
    

    @IBAction func Item1Stepper(_ sender: UIStepper) {
        Item1 = (Int(sender.value))
        Item1TextField.text = "\(Item1)"
    }
    
    
    @IBAction func Item2Stepper(_ sender: UIStepper) {
        Item2 = (Int(sender.value))
        Item2TextField.text = "\(Item2)"
    }
    
    
    @IBAction func Item3Stepper(_ sender: UIStepper) {
        Item3 = (Int (sender.value))
        Item3TextField.text = "\(Item3)"
    }
    func caculate() {
        let sum = Item1 * 28500 + Item2 * 57900 + Item3 * 28900
        TotalTextField.text = "\(sum)"

    }
    @IBAction func TotalTextField(_ sender: UITextField) {
        caculate()
    }

    @IBAction func TotalButton(_ sender: UIButton) {
        caculate()
    }
    
    @IBOutlet weak var Item1Stepper: UIStepper!
    @IBOutlet weak var Item2Stepper: UIStepper!
    @IBOutlet weak var Item3Stepper: UIStepper!
    @IBAction func ResetButton(_ sender: UIButton) {
        Item1TextField.text = "0"
        Item2TextField.text = "0"
        Item3TextField.text = "0"
        TotalTextField.text = "0"
        Item1Stepper.value = 0
        Item2Stepper.value = 0
        Item3Stepper.value = 0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

