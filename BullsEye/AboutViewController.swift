//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Abraham Vazquez on 12/30/16.
//  Copyright © 2016 Abraham Vazquez. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cerrar()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
