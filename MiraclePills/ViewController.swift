//
//  ViewController.swift
//  MiraclePills
//
//  Created by Agarwal,Anisha on 10/12/16.
//  Copyright © 2016 Agarwal,Anisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        for i in 13...16 {
            self.view.viewWithTag(i)?.isHidden = true
        }
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        for i in 13...16 {
            self.view.viewWithTag(i)?.isHidden = false
        }
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        for i in 1...16 {
            self.view.viewWithTag(i)?.isHidden = true
        }
    successIndicator.isHidden = false
    
    }
}

