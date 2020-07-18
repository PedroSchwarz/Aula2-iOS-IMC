//
//  ViewController.swift
//  Aula2-IMC
//
//  Created by IOS SENAC on 18/07/20.
//  Copyright © 2020 IOS SENAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAltura: UITextField!
    
    @IBOutlet weak var txtPeso: UITextField!

    @IBOutlet weak var resultado: UILabel!
    
    @IBOutlet weak var sliderAltura: UISlider!
    
    @IBOutlet weak var txtSliderAltura: UILabel!
    
    @IBOutlet weak var sliderPeso: UISlider!
    
    @IBOutlet weak var txtSliderPeso: UILabel!
    
    @IBOutlet weak var sliderResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let valorSlider = retornaIMC(peso: Double(sliderPeso.value), altura: Double(sliderAltura.value))
        txtSliderAltura.text = String(Int(sliderAltura.value))
        txtSliderPeso.text = String(Int(sliderPeso.value))
        sliderResultado.text = String(valorSlider)
    }

    @IBAction func calcular(_ sender: Any) {
        if let altura = Double(txtAltura.text!) {
            if let peso = Double(txtPeso.text!) {
                let valor = retornaIMC(peso: peso, altura: altura)
                resultado.text = String(valor)
            }
        }
    }
    
    @IBAction func alturaAlterada(_ sender: Any) {
        let valorSlider = retornaIMC(peso: Double(sliderPeso.value), altura: Double(sliderAltura.value))
        txtSliderAltura.text = String(Int(sliderAltura.value))
        sliderResultado.text = String(valorSlider)
    }
    
    @IBAction func pesoAlterado(_ sender: Any) {
        let valorSlider = retornaIMC(peso: Double(sliderPeso.value), altura: Double(sliderAltura.value))
        txtSliderPeso.text = String(Int(sliderPeso.value))
        sliderResultado.text = String(valorSlider)
    }
    
    func retornaIMC(peso: Double, altura: Double) -> Double {
        return (peso / ((altura * altura)/100)*100)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

