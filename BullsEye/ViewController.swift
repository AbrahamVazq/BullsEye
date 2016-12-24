//
//  ViewController.swift
//  BullsEye
//
//  Created by Abraham Vazquez on 12/20/16.
//  Copyright © 2016 Abraham Vazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    /* Variables */
    var valorSlider: Int = 50;
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        valorSlider = lroundf(slider.value)
    }
    /***************************************************************************************/
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /***************************************************************************************/
    /* Accion del boton inicial */
    @IBAction func ShowAlert()
    {
        let mensajeConElValor:String = "El valor que obtuviste es: \(valorSlider)"
        
        let alertaBotonInicial = UIAlertController(title: "Hola Mundo", message: mensajeConElValor, preferredStyle: .Alert)
        
        let accionBotonInicial = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        
        alertaBotonInicial.addAction(accionBotonInicial)
        
        presentViewController(alertaBotonInicial, animated:true, completion: nil)
    }
    /***************************************************************************************/
    /* Accion del Slider */
    @IBAction func sliderMoved(slider: UISlider)
    {
        valorSlider = lroundf(slider.value)
        print("El valor del slider is: \(valorSlider)")
    }
    /***************************************************************************************/
}

