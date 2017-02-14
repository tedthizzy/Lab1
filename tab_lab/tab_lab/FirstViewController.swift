//
//  FirstViewController.swift
//  tab_lab
//
//  Created by Frederick Thayer on 2/8/17.
//  Copyright © 2017 FMT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var foodpicker: UIPickerView!

    @IBOutlet weak var textlabel: UILabel!
    
    var foods = [String]()
    
    let genre = ["Country","Pop","Rock","Classical","Alternative","Hip Hop","Jazz"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = getDataFile() else{
            print("Error loading file")
            return
        }
        
        foods = NSArray(contentsOfFile: path) as! [String]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getDataFile() -> String?{
        guard let pathString = Bundle.main.path(forResource: "foodplist", ofType: "plist")
            else {
                return nil
        }
        return pathString
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return foods.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return foods[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textlabel.text="Munchin' on \(foods[row]) for lunch!" 
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

