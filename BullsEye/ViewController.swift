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
    var valorSlider: Int = 50
    var valorObjetivo: Int = 0
    /*
        La siguiente linea le dice al Constructor de interfaz
        que en algun lugar tengo una variable "slider" de tipo UISlider
    */
    @IBOutlet weak var slider: UISlider!
    /*
        La siguiente linea añade el valor generado aleatoriamente a un
        Label
     */
    @IBOutlet weak var valorObjetivoLabel: UILabel!
    
    /***************************************************************************************/
    /***************************************************************************************/
    /***************************************************************************************/
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // llama a la funcion nuevo Round el cual inicializa los valores del slider y genera otro aleatorio
        iniciaNuevoRound()
        // llama a la funcion que escribira valores en los Label
        actualizaLabel()
        
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
        var diferenciaDeValores = valorSlider - valorObjetivo
        
        if diferenciaDeValores < 0
        {
            diferenciaDeValores = diferenciaDeValores * -1
        }
        
        
        let mensajeConElValor:String = "El valor del Slider es: \(valorSlider)"
                                    + "\nEl valor objetivo es: \(valorObjetivo)"
                                    + "\nLa diferencia es: \(diferenciaDeValores)"
        
        
        let alertaBotonInicial = UIAlertController(title: "Resultados", message: mensajeConElValor, preferredStyle: .Alert)
        
        let accionBotonInicial = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        
        alertaBotonInicial.addAction(accionBotonInicial)
        
        presentViewController(alertaBotonInicial, animated:true, completion: nil)
        
        iniciaNuevoRound()
        actualizaLabel()
    }
    /***************************************************************************************/
    /* Accion del Slider */
    @IBAction func sliderMoved(slider: UISlider)
    {
        valorSlider = lroundf(slider.value)
        print("El valor del slider is: \(valorSlider)")
    }
    /***************************************************************************************/
    /* Funcion que genera un nuevo Round */
    func iniciaNuevoRound()
    {
        valorObjetivo = 1 + Int(arc4random_uniform(100))
        valorSlider = 50
        slider.value = Float(valorSlider)
    }
    /***************************************************************************************/
    /* Funcion que actualiza los Labels en la app */
    func actualizaLabel()
    {
        valorObjetivoLabel.text = String(valorObjetivo)
    }
    /***************************************************************************************/
    
}

