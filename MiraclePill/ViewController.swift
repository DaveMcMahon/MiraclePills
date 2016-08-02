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
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var successImage: UIImageView!
    
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
        countryLabel.isHidden = true
        countryField.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        regionBtn.isHidden = true
        regionLabel.isHidden = true
        countryLabel.isHidden = true
        countryField.isHidden = true
        nameLabel.isHidden = true
        nameField.isHidden = true
        streetLabel.isHidden = true
        streetField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        divider.isHidden = true
        priceLabel.isHidden = true
        titleLabel.isHidden = true
        pillImage.isHidden = true
        successImage.isHidden = false
        buyNowBtn.isHidden = true
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

