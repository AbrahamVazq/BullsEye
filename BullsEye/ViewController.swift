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
    var puntuacion: Int = 0
    var round: Int = 0
    /*
        La siguiente linea le dice al Constructor de interfaz
        que en algun lugar tengo una variable "slider" de tipo UISlider
    */
    @IBOutlet weak var slider: UISlider!
    /*
        La siguiente linea añade el valor generado aleatoriamente a un
        Label del valor objetivo
     */
    @IBOutlet weak var valorObjetivoLabel: UILabel!
    /* 
        La siguiente linea añade el valor de puntuacion al label Puntuacion
     */
    @IBOutlet weak var puntuacionLable: UILabel!
    /*
        La siguiente linea añade el valor del round actual en Label round
     */
    @IBOutlet weak var roundLabel: UILabel!
    
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
        // Funcion abs() obtiene un valor positivo siempre (Absoluto)
        let diferenciaDeValores = abs(valorSlider - valorObjetivo)
        // Linea que obtiene el valor de la puntuacion final y la asigna a la variable
        var puntos = 100 - diferenciaDeValores
        puntuacion += puntos
        
        // Inicio del If para los mensajes personalizados y el bonus.
        let mensajeResultado: String
        
        if diferenciaDeValores == 0
        {
            mensajeResultado = "Perfecto!!!"
            puntos += 100
        }
        else if diferenciaDeValores < 5
        {
            mensajeResultado = "Muy cerca!"
            if diferenciaDeValores == 1
            {
                puntos += 50
            }
        }
        else if diferenciaDeValores < 10
        {
            mensajeResultado = "Bien hecho!"
        }
        else
        {
            mensajeResultado = "Muy frio! "
        }
        
        /*let mensajeConElValor:String = "El valor del Slider es: \(valorSlider)"
                                    + "\nEl valor objetivo es: \(valorObjetivo)"
                                    + "\nLa diferencia es: \(diferenciaDeValores)" */
        
        let mensajeConElValor: String = "Tu Puntuaciones : \(puntos) puntos."
        
        
        let alertaBotonInicial = UIAlertController(title: "\(mensajeResultado)", message: mensajeConElValor, preferredStyle: .Alert)
        
        let accionBotonInicial = UIAlertAction(title: "Ok", style: .Default, handler:
                                                               { action in
                                                                   self.iniciaNuevoRound()
                                                                   self.actualizaLabel()
                                                                })
        
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
    /* Funcion que genera un nuevo Round */
    func iniciaNuevoRound()
    {
        round += 1
        valorObjetivo = 1 + Int(arc4random_uniform(100))
        valorSlider = 50
        slider.value = Float(valorSlider)
    }
    /***************************************************************************************/
    /* Funcion que actualiza los Labels en la app */
    func actualizaLabel()
    {
        valorObjetivoLabel.text = String(valorObjetivo)
        puntuacionLable.text = String(puntuacion)
        roundLabel.text = String(round)
    }
    /***************************************************************************************/
    
}

