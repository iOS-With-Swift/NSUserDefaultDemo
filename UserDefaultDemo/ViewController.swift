//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by PhongLe on 3/29/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSave: UITextField!
    @IBOutlet weak var txtShow: UITextField!
    
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnSave(_ sender: UIButton) {
        defaults.set(txtSave.text, forKey: "word")
        
    }
    @IBAction func btnShow(_ sender: UIButton) {
        txtShow.text = defaults.string(forKey: "word")
    }

}

