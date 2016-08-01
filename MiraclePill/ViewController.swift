//
//  ViewController.swift
//  MiraclePill
//
//  Created by Dave on 31/07/2016.
//  Copyright © 2016 Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Comment for git testing
    @IBOutlet weak var regionPicker: UIPickerView!
    @IBOutlet weak var regionBtn: UIButton!
    
    let regions: [String] = ["Munster", "Connaght","Leinster","Ulster"]

    override func viewDidLoad() {
        super.viewDidLoad()
        regionPicker.dataSource = self
        regionPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func regionBtnPressed(_ sender: AnyObject) {
        regionPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return regions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return regions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        regionBtn.setTitle(regions[row], for: UIControlState.normal)
        regionPicker.isHidden = true
    }

}

