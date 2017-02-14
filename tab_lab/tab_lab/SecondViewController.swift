//
//  SecondViewController.swift
//  tab_lab
//
//  Created by Frederick Thayer on 2/8/17.
//  Copyright © 2017 FMT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func gotoapp(_ sender: UIButton) {
            if(UIApplication.shared.canOpenURL(URL(string:"googlemaps://")!)){
                UIApplication.shared.open(URL(string:"googlemaps://")!,options:[:],completionHandler: nil)
            }else{
                if(UIApplication.shared.canOpenURL(URL(string:"music://")!)){
                    UIApplication.shared.open(URL(string:"music://")!,options:[:],completionHandler: nil)
                } else {
                    UIApplication.shared.open(URL(string:"http://www.myconet.org")!,options:[:],completionHandler: nil)
                }
            }

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

