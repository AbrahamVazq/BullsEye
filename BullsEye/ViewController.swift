//
//  ViewController.swift
//  BullsEye
//
//  Created by Abraham Vazquez on 12/20/16.
//  Copyright © 2016 Abraham Vazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShowAlert()
    {
        
        let alerta = UIAlertController(title: "Hola Mundo", message: "Este es un mensaje", preferredStyle: .Alert)
        
        let accion = UIAlertAction(title: "Titulo del botonasd", style: .Default, handler: nil)
        
        
        alerta.addAction(accion)
        
        presentViewController(alerta, animated:true, completion: nil)
        
    }
}

